///week11-1.cpp
///函式/函數 function
#include <stdio.h>
///前面定義函式
///送出來的式int整數
/// 送進去整數a整數b
int addnum(int a, int b)
{
    printf("在函式addnum()裡得到參數a:%d b:%d\n",a,b);
    int ans = a+b;
    printf("算出答案%d 要return出去喔\n",ans);
    return ans;
}
int main()
{///主要的函式主程式
    printf("在main() 呼叫使用 addnum()\n");
    int ans = addnum(2,3);
    printf("在main()得到答案:%d\n",ans);

}
