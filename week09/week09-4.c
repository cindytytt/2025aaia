///week09-4
#include <stdio.h>
int main()
{
	int n;
	scanf("%d",&n);

	for(int i=1; i<=n; i++){
		for(int k=1; k<=i; k++) printf("*");
		printf("\n",i);


	}

}
