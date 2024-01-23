#include <iostream>
#include "opt.h"
#include <immintrin.h> // Include header for SIMD intrinsics
#include <emmintrin.h>  // 包括了SSE2指令集
using namespace std;
table Table;
double SumQuantity, SumBasePrice, SumDiscPrice, SumCharge, AvgQuantity, AvgPrice, AvgDiscount;
size_t total;

void calculate1(int n)
{
    long long sum_qty1 = 0, sum_base_price1 = 0;
    long long sum_qty2 = 0, sum_base_price2 = 0;
    double sum_disc_price = 0, sum_charge = 0, sum_discount = 0;
    size_t count_order = 0;
    size_t num=Table.num;
    int *quantity_start=Table.quantity;
    int *price_start=Table.price;
    double *discount_start=Table.discount;
    double *tax_start=Table.tax;
    int *date_start=Table.date;
    for (int a = 0; a < num-1; a+=2)
    {   int date1 = date_start[a];
        if (date1 <= n)
        {   
            int price= price_start[a];
            double discount= discount_start[a];
            double disc_price= price * (1 - discount);
            sum_qty1 += quantity_start[a];
            sum_base_price1 +=price;
            sum_discount += discount;
            sum_disc_price += disc_price;
            sum_charge +=disc_price * (1 + tax_start[a]);
            count_order++;
        }
        int date2=date_start[a+1];
        if(date2<=n)
        {
            int price= price_start[a+1];
            double discount= discount_start[a+1];
            double disc_price= price * (1 - discount);
            sum_qty2+= quantity_start[a+1];
            sum_base_price2 +=price;
            sum_discount += discount;
            sum_disc_price += disc_price;
            sum_charge +=disc_price * (1 + tax_start[a+1]);
            count_order++;
        }
    }
    if(num%2==1)
    {
        int date=date_start[num-1];
        if(date<=n)
        {
            int qty= quantity_start[num-1];
            int price= price_start[num-1];
            double discount= discount_start[num-1];
            double disc_price= price * (1 - discount);
            sum_qty1 += qty;
            sum_base_price1 +=price;
            sum_discount += discount;
            sum_disc_price += disc_price;
            sum_charge +=disc_price * (1 + tax_start[num-1]);
            count_order++;
        }
    }
    SumQuantity = sum_qty1+sum_qty2;
    SumBasePrice = sum_base_price1+sum_base_price2;
    SumDiscPrice = sum_disc_price;
    SumCharge = sum_charge;
    AvgQuantity = SumQuantity / num;
    AvgPrice = SumBasePrice / num;
    AvgDiscount = sum_discount / num;
    total = count_order;
}
void calculate2(int n)
{   SumQuantity=0;
    SumBasePrice=0;
    SumDiscPrice=0;
    SumCharge=0;
    AvgQuantity=0;
    AvgPrice=0;
    AvgDiscount=0;
    total=0;
    __m128i sum_qty = _mm_setzero_si128();
    __m128i sum_base_price = _mm_setzero_si128();
    __m256d sum_disc_price = _mm256_setzero_pd();
    __m256d sum_charge = _mm256_setzero_pd();
    __m256d sum_discount = _mm256_setzero_pd();
    size_t count_order = 0;
    int withi=8;
    int withd=4;
    int lengthi=Table.num/withi;
    int lengthd=Table.num/withd;
    int *quantity_start=Table.quantity;
    int *price_start=Table.price;
    double *discount_start=Table.discount;
    double *tax_start=Table.tax;
    int *date_start=Table.date;
    __m128i quantity_sum=_mm_setzero_si128();
    __m128i price_sum=_mm_setzero_si128();
    __m128i count=_mm_setzero_si128();
    for(int i=0;i<lengthd;i++){
        __m128i date=_mm_loadu_si128((__m128i*)(date_start+i*withd));
        __m128i mask=_mm_cmpgt_epi32(_mm_set1_epi32(n+1),date);
        __m128i quantity=_mm_loadu_si128((__m128i*)(quantity_start+i*withd));
        __m128i price=_mm_loadu_si128((__m128i*)(price_start+i*withd));
        __m256d discount=_mm256_loadu_pd(discount_start+i*withd);
        __m256d tax=_mm256_loadu_pd(tax_start+i*withd);
        quantity=_mm_and_si128(quantity,mask);
        price=_mm_and_si128(price,mask);
        quantity_sum=_mm_add_epi32(quantity_sum,quantity);
        price_sum=_mm_add_epi32(price_sum,price);
        __m256d disc_price=_mm256_mul_pd(_mm256_cvtepi32_pd(price),_mm256_sub_pd(_mm256_set1_pd(1),discount));
        __m256d charge=_mm256_mul_pd(disc_price,_mm256_add_pd(_mm256_set1_pd(1),tax));
        discount=_mm256_mul_pd(_mm256_cvtepi32_pd(mask),_mm256_sub_pd(_mm256_setzero_pd(),discount));
        count=_mm_add_epi32(count,_mm_and_si128(_mm_set1_epi32(1),mask));
        sum_discount=_mm256_add_pd(sum_discount,discount);
        sum_disc_price=_mm256_add_pd(sum_disc_price,disc_price);
        sum_charge=_mm256_add_pd(sum_charge,charge);
    }
    int temp=0;
    double temp1=0;
    for(int i=0;i<withd;i++){
        temp+=((int*)&quantity_sum)[i];
        temp1+=((int*)&price_sum)[i];
        SumDiscPrice+=((double*)&sum_disc_price)[i];
        SumCharge+=((double*)&sum_charge)[i];
        AvgDiscount+=((double*)&sum_discount)[i];
        total+=((int*)&count)[i];
    }
    SumQuantity=temp;
    SumBasePrice=temp1;
    AvgDiscount=AvgDiscount/Table.num;
    AvgQuantity=SumQuantity/Table.num;
    AvgPrice=SumBasePrice/Table.num;

}
