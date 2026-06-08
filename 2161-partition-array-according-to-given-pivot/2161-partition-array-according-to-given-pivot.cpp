class Solution {
public:
    vector<int> pivotArray(vector<int>& nums, int pivot) {
        vector<int> small;
        vector<int>equal;
        vector<int> big;
        vector<int> result;
        for(int x: nums){
            if(x < pivot){
                small.push_back(x);
            }else if(x == pivot){
                equal.push_back(x);
            }else{
                big.push_back(x);
            }
        }
        for(int x: small){result.push_back(x);}
        for(int x: equal){result.push_back(x);}
        for(int x: big){result.push_back(x);}
        
        return result;
    }
};