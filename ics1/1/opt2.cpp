#include <iostream>
#include <immintrin.h>  // 包括了AVX指令集
#include <emmintrin.h>  // 包括了SSE2指令集
#include <vector>
#include <numeric>
#include "opt.h"
#include <omp.h>

table Table;
double SumQuantity, SumBasePrice, SumDiscPrice, SumCharge, AvgQuantity, AvgPrice, AvgDiscount;
size_t total;

int getdata(table* table, int* ptr, int index)
{
    if (index < 0 || index >= table->num)
        return 0;
    else
        return ptr[index];
}

double getdata(table* table, double* ptr, int index)
{
    if (index < 0 || index >= table->num)
        return 0;
    else
        return ptr[index];
}

void calculate1(int n)
{
    int row_num = Table.num;
    long long sum_qty = 0, sum_base_price = 0;
    double sum_disc_price = 0, sum_charge = 0, sum_discount = 0, avg_qty = 0, avg_price = 0, avg_disc = 0;
    size_t count_order = 0;

    #pragma omp parallel for reduction(+:sum_qty, sum_base_price, sum_disc_price, sum_charge, sum_discount) 
    for (register int i = 0; i < row_num; i += 2) // Loop increment changed to 2
    {
        // First iteration of the loop
        if (i < row_num && Table.date[i] <= n) {
            ++count_order;
            int quantity_i = Table.quantity[i];
            int price_i = Table.price[i];
            double discount_i = Table.discount[i];
            double tax_i = Table.tax[i];

            sum_qty += quantity_i;
            sum_base_price += price_i;
            sum_disc_price += price_i * (1 - discount_i);
            sum_charge += price_i * ((1 - discount_i) * (1 + tax_i));
        }

        // Second iteration of the loop
        if (i + 1 < row_num && Table.date[i + 1] <= n) {
            ++count_order;
            int quantity_i1 = Table.quantity[i + 1];
            int price_i1 = Table.price[i + 1];
            double discount_i1 = Table.discount[i + 1];
            double tax_i1 = Table.tax[i + 1];

            sum_qty += quantity_i1;
            sum_base_price += price_i1;
            sum_disc_price += price_i1 * (1 - discount_i1);
            sum_charge += price_i1 * ((1 - discount_i1) * (1 + tax_i1));
        }
    }
    
    SumQuantity = sum_qty;
    SumBasePrice = sum_base_price;
    SumDiscPrice = sum_disc_price;
    SumCharge = sum_charge;
    AvgQuantity = SumQuantity / count_order; // changed to count_order
    AvgPrice = SumBasePrice / count_order;   // changed to count_order
    AvgDiscount = sum_discount / count_order; // changed to count_order
    total = count_order;
}


void calculate2(int n) {
    int row_num = Table.num;
    __m256i sum_qty = _mm256_setzero_si256();
    __m256i sum_base_price = _mm256_setzero_si256();
    // Assuming discount and tax are already double, we continue using double for them
    __m256d sum_disc_price = _mm256_setzero_pd();
    __m256d sum_charge = _mm256_setzero_pd();
    size_t count_order = 0;

    #pragma omp parallel for reduction(+:sum_qty, sum_base_price, sum_disc_price, sum_charge, count_order)
    for (int i = 0; i < row_num; i += 4) {
        // Load integer data
        __m256i quantity = _mm256_loadu_si256((__m256i*)&Table.quantity[i]);
        __m256i price = _mm256_loadu_si256((__m256i*)&Table.price[i]);
        __m256i date = _mm256_loadu_si256((__m256i*)&Table.date[i]);

        // Convert integer data to double for further calculations
        __m256d quantity_d = _mm256_cvtepi32_pd(_mm256_extractf128_si256(quantity, 0));
        __m256d price_d = _mm256_cvtepi32_pd(_mm256_extractf128_si256(price, 0));

        // Load double data
        __m256d discount = _mm256_loadu_pd(&Table.discount[i]);
        __m256d tax = _mm256_loadu_pd(&Table.tax[i]);

        // Apply mask based on date
        __m256d mask_date = _mm256_cmp_pd(_mm256_cvtepi32_pd(_mm256_extractf128_si256(date, 0)), _mm256_set1_pd((double)n), _CMP_LE_OS);
        __m256d masked_quantity = _mm256_and_pd(quantity_d, mask_date);
        __m256d masked_price = _mm256_and_pd(price_d, mask_date);
        __m256d masked_discount = _mm256_and_pd(discount, mask_date);
        __m256d masked_tax = _mm256_and_pd(tax, mask_date);

        // Update sum variables
        __m128i conv_quantity = _mm256_cvtpd_epi32(masked_quantity);
        __m128i conv_price = _mm256_cvtpd_epi32(masked_price);

        // 将 __m128i 转换为 __m256i
        __m256i conv_quantity_256 = _mm256_cvtepi32_epi64(conv_quantity);
        __m256i conv_price_256 = _mm256_cvtepi32_epi64(conv_price);

    // 整数累加
    sum_qty = _mm256_add_epi64(sum_qty, conv_quantity_256);
    sum_base_price = _mm256_add_epi64(sum_base_price, conv_price_256);
        sum_disc_price = _mm256_fmadd_pd(masked_price, _mm256_sub_pd(_mm256_set1_pd(1.0), masked_discount), sum_disc_price);
        sum_charge = _mm256_fmadd_pd(masked_price, _mm256_mul_pd(_mm256_sub_pd(_mm256_set1_pd(1.0), masked_discount), _mm256_add_pd(_mm256_set1_pd(1.0), masked_tax)), sum_charge);

        // Count orders
        count_order += _mm_popcnt_u32(_mm256_movemask_pd(mask_date));
    }

    // Finalize results
    double partial_sums[4];
    _mm256_storeu_pd(partial_sums, _mm256_cvtepi32_pd(_mm256_castsi256_si128(sum_qty)));
    SumQuantity = std::accumulate(partial_sums, partial_sums + 4, 0.0);
    _mm256_storeu_pd(partial_sums, _mm256_cvtepi32_pd(_mm256_castsi256_si128(sum_base_price)));
    SumBasePrice = std::accumulate(partial_sums, partial_sums + 4, 0.0);
    _mm256_store_pd(partial_sums, sum_disc_price);
    SumDiscPrice = std::accumulate(partial_sums, partial_sums + 4, 0.0);
    _mm256_store_pd(partial_sums, sum_charge);
    SumCharge = std::accumulate(partial_sums, partial_sums + 4, 0.0);

    AvgQuantity = SumQuantity / count_order;
    AvgPrice = SumBasePrice / count_order;
    AvgDiscount = (SumDiscPrice - SumBasePrice) / count_order;
    total = count_order;
}