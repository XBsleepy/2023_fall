#include <iostream>
#include <chrono>
#include "opt.h"

using namespace std;
using namespace chrono;


void make()
{   srand(1);
    size_t size = 10000000;
    Table.num = size;
    Table.quantity = (int*)calloc(size, sizeof(int));
    Table.price = (int*)calloc(size, sizeof(int));
    Table.discount = (double*)calloc(size, sizeof(double));
    Table.tax = (double*)calloc(size, sizeof(double));
    Table.date = (int*)calloc(size, sizeof(int));

    for (size_t a = 0; a < size; ++a)
    {
        Table.quantity[a] = rand() % 10 + 10;
        Table.price[a] = rand() % 10 + 20;
        Table.discount[a] = (double)(rand() % 40 + 10) / 100;
        Table.tax[a] = (double)(rand() % 10 + 1) / 100;
        Table.date[a] = a % 100 + 1;
    }
}
#include <cstdio>
int main() {
    make();
    auto start = system_clock::now();
    calculate1(50);
    auto end = system_clock::now();
    printf("SumQuantity: %lf\n", SumQuantity);
    printf("SumBasePrice: %lf\n", SumBasePrice);
    printf("SumDiscPrice: %lf\n", SumDiscPrice);
    printf("SumCharge: %lf\n", SumCharge);
    printf("AvgQuantity: %lf\n", AvgQuantity);
    printf("AvgPrice: %lf\n", AvgPrice);
    printf("AvgDiscount: %lf\n", AvgDiscount);
    printf("total: %lf\n", total);
    auto duration = duration_cast<microseconds>(end - start);
    printf("NO SIMD cost %.6f seconds\n", ((double)duration.count() * microseconds::period::num / microseconds::period::den));

    start = system_clock::now();
    calculate2(50);
    end = system_clock::now();
    printf("SumQuantity: %lf\n", SumQuantity);
    printf("SumBasePrice: %lf\n", SumBasePrice);
    printf("SumDiscPrice: %lf\n", SumDiscPrice);
    printf("SumCharge: %lf\n", SumCharge);
    printf("AvgQuantity: %lf\n", AvgQuantity);
    printf("AvgPrice: %lf\n", AvgPrice);
    printf("AvgDiscount: %lf\n", AvgDiscount);
    printf("total: %lf\n", total);
    duration = duration_cast<microseconds>(end - start);
    printf("SIMD cost %.6f seconds\n", ((double)duration.count() * microseconds::period::num / microseconds::period::den));

    return 0;
}
