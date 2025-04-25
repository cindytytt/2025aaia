///week10-4.cpp
///Leecold-1399. Count Largest Group
class Solution {
public:
    int countLargestGroup(int n) {
        int a[100]={};
        int largest =0;
        for(int i=1;i<=n;i++){
            int now = i;
            int total=0;
            while(now>0){
                total += now %10;
                now=now/10;
            }
            a[total]++;
            if(a[total] > largest) largest = a[total];
        }
        int ans = 0;
        for(int i=0; i<100;i++){
            if(a[i]==largest) ans++;
        }
        return ans;
    }
};
