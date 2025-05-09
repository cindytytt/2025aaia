///week12-4.cpp
#include <stdio.h>
int fid(int n)
{
    if(n==0) return 0;
    if(n==1) return 1;
    return fid(n-1)+fid(n-2);

}
int main()
{
    printf("請輸入數字(ex. 13):");
    int n;
    scanf("%d",&n);
    printf("答案是:%d\n",fid(n));
}
