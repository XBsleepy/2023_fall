#include<stdio.h>
#include<limits.h>
int ls[300];
int flag=2;
int fitsShort(int x) {

        return  1;}
int isTmax(int x) {
        int a=0;
        a=~x;
        x=x+1;
        printf("%x->%d %x %x, %x\n",a,a,x,x-1,((x>>31)&1));
        return !((a^x)&(!((x>>31)&1)));
        
}
int anyOddBit(int x) {
        int a=170;
        a=a<<8|a;
        a=a<<16|a;
        //printf("%x",a);
        x=x&a;
        x=!!(x);
        return x;
}
int upperBits(int n) {
int x=~0;
int a=(33+~n);
int t=a>>1;
x=x<<t;
x=x<<t;
x=x<<(a&1);
return x;
}

int absVal(int x) {
        int a=1;
        a<<31;
        a=~a;
        x=x&a;
  return x;
}
int divpwr2(int x, int n) {
        int t=(x>>31)&1;
    x=(x>>n)+t;
    return x;
}
int main(){
    printf("%d",divpwr2(-33,0));
    return 0;}