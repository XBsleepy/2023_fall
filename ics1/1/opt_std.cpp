#include <iostream>
#include "opt_std.h"

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
    long long sum_qty = 0, sum_base_price = 0;
    double sum_disc_price = 0, sum_charge = 0, sum_discount = 0, avg_qty = 0, avg_price = 0, avg_disc = 0;
    size_t count_order = 0;
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            sum_qty += getdata(&Table, Table.quantity, a);
        }
    }
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            sum_base_price += getdata(&Table, Table.price, a);
        }
    }
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            sum_discount += getdata(&Table, Table.discount, a);
        }
    }
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            sum_disc_price += getdata(&Table, Table.price, a) * (1 - getdata(&Table, Table.discount, a));
        }
    }
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            sum_charge += getdata(&Table, Table.price, a) * (1 - getdata(&Table, Table.discount, a)) * (1 + getdata(&Table, Table.tax, a));
        }
    }
    for (int a = 0; a < Table.num; a++)
    {
        int date = getdata(&Table, Table.date, a);
        if (date <= n)
        {
            count_order++;
        }
    }
    SumQuantity = sum_qty;
    SumBasePrice = sum_base_price;
    SumDiscPrice = sum_disc_price;
    SumCharge = sum_charge;
    AvgQuantity = SumQuantity / Table.num;
    AvgPrice = SumBasePrice / Table.num;
    AvgDiscount = sum_discount / Table.num;
    total = count_order;
}

void calculate2(int n)
{

}



