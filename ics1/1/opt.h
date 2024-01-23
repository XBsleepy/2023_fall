#pragma once
#include <iostream>

struct table
{
    size_t num;
    int* quantity;
    int* price;
    int* date;
    double* discount;
    double* tax;
};

extern table Table;
extern double SumQuantity, SumBasePrice, SumDiscPrice, SumCharge, AvgQuantity, AvgPrice, AvgDiscount;
extern size_t total;

// kernel fuction
void calculate1(int n);
void calculate2(int n);

// auxiliary function

