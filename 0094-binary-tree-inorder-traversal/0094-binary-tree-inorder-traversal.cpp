/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) {
        vector<int> ans;
        if(root == NULL) return {};
        vector<int> left_val = inorderTraversal(root->left);
        ans.insert(ans.end(),left_val.begin(),left_val.end());
        ans.push_back(root->val);
        vector<int> right_val = inorderTraversal(root->right);
        ans.insert(ans.end(),right_val.begin(),right_val.end());

        return ans;
    }
};