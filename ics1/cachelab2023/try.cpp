#include<stdio.h>
void transpose_64x64(int M, int N, int A[16][16], int B[16][16])
{
    int a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7;
    for (int i = 0; i < M; i += 8)
    {
        for (int j = 0; j < N; j += 8)
        {
            for (int temp = 0; temp < 4 ; temp++)
            {
                a_0=A[i+temp][j];
                a_1=A[i+temp][j+1];
                a_2=A[i+temp][j+2];
                a_3=A[i+temp][j+3];
                a_4=A[i+temp][j+4];
                a_5=A[i+temp][j+5];
                a_6=A[i+temp][j+6];
                a_7=A[i+temp][j+7];
                B[j][i+temp]=a_0;
                B[j+1][i+temp]=a_1;
                B[j+2][i+temp]=a_2;
                B[j+3][i+temp]=a_3;
                B[j+temp][i+4]=a_4;
                B[j+temp][i+5]=a_5;
                B[j+temp][i+6]=a_6;
                B[j+temp][i+7]=a_7;
            }
            for(int temp=0;temp<4;temp++){
                a_0=B[j+temp][i+4];
                a_1=B[j+temp][i+5];
                a_2=B[j+temp][i+6];
                a_3=B[j+temp][i+7];
                a_4=A[i+4][j+temp];
                a_5=A[i+5][j+temp];
                a_6=A[i+6][j+temp];
                a_7=A[i+7][j+temp];
                B[j+temp][i+4]=a_4;
                B[j+temp][i+5]=a_5;
                B[j+temp][i+6]=a_6;
                B[j+temp][i+7]=a_7;
                B[j+4][i+temp]=a_0;
                B[j+5][i+temp]=a_1;
                B[j+6][i+temp]=a_2;
                B[j+7][i+temp]=a_3;
            }
            for(int temp=0;temp<4;temp++){
                a_0=A[i+4][j+4+temp];
                a_1=A[i+5][j+4+temp];
                a_2=A[i+6][j+4+temp];
                a_3=A[i+7][j+4+temp];
                B[j+4+temp][i+4]=a_0;
                B[j+4+temp][i+5]=a_1;
                B[j+4+temp][i+6]=a_2;
                B[j+4+temp][i+7]=a_3;
                
            }
        }
    }
}
int main()
{
    int A[16][16], B[16][16]={0};
    for (int i = 0; i < 16; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            A[i][j] = i * 16 + j;
        }
    }
    transpose_64x64(16, 16, A, B);
    for (int i = 0; i < 16; i++)
    {
        for (int j = 0; j < 16; j++)
        {
            printf("%d ", B[i][j]);
        }
        printf("\n");
    }
    return 0;
}