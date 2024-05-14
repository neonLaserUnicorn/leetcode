class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> ans = List<int>.filled(nums.length, 1);
    int curr = 1;
    for (int i = 0; i < nums.length; i++) {
      ans[i] *= curr;
      curr *= nums[i];
    }
    curr = 1;
    for (int i = nums.length - 1; i >= 0; --i) {
      ans[i] *= curr;
      curr *= nums[i];
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.productExceptSelf([-1, 1, 0, -3, 3]));
}
