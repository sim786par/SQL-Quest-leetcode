class Solution {
public:
    vector<int> majorityElement(vector<int>& nums) {
        int n = nums.size();
        int limit = abs(n/3);
        vector<int> result;
        unordered_map<int,int> mp;
        for(int i=0;i<n;i++){
            mp[nums[i]]++;
        }
        for(auto p : mp){
            if(p.second > limit){
                result.push_back(p.first);
            }
        }
        return result;
    }
};