///week09-1
///leetcode 38. Count and Say
class Solution {
public:
    string countAndSay(int n) {
        if(n==1) return "1";
        string prev = countAndSay(n-1);
        string ans="";
        char prevC = prev[0];
        int prevN = 1;
        for(int i=1; i<prev.length();i++){
            if(prevC ==prev[i])prevN++;
            else{
                ans += string(to_string(prevN)) + prevC;
                prevC = prev[i];
                prevN = 1;
            }
        }
        ans+= string(to_string(prevN))+prevC;
        return ans;
    }
};
