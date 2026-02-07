// in this we are checking the "ba" pattern before pushing the element in the stack and returning the count of pop operation in "ba" pattern
class Solution {
public:
    int minimumDeletions(string s) {
        int count=0;
        stack<char> st;
        for(int i=0;i<s.size();i++){
            if(!st.empty() && st.top()=='b' &&s[i]=='a'){
                st.pop();
                count++;
            }
            else{
                st.push(s[i]);
            }
        }
        return count;
    }
};