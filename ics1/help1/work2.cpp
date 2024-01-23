#include<stdio.h>
int main(){
    int x=3,y=4,z=0;
    while(1)
    {   if(z>=10)
    {
        break;
    }
        x=x+y;
        y=y+x;
        z++;
    }
    if(x>=y)
    {if(y-x>3)
    {y=x*y;
    x=x+y;
    }
    }
    else{
        x=x*y;
        y=y-x;
    }
    printf("%x\n",x^y);
    return 0;
}