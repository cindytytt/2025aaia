///week14-3.cpp
# include <stdio.h>
int main()
{
    int a[100];
    int N,t=1;
    while(scanf("%d",&N)==1){
        int bad=0;
        for(int i=0;i<N;i++){
            scanf("%d",&a[i]);
        }
        if(a[0]<1)bad=1;

        if(bad==0)printf("Case #%d: It is a B2-Sequence.\n\n",t);
        else printf("Case #%d: It is not a B2-Sequence.\n\n",t);
        t++;
    }
}

