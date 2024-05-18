class Solution {
  int pivotIndex(List<int> nums) {
    int left = 0;
    int right = 0;
    for (int i = nums.length - 1; i > 0; i--) {
      right += nums[i];
    }
    for (int i = 0; i < nums.length; i++) {
      if (left == right) return i;
      left += nums[i];
      if (i < nums.length - 1)
        right -= nums[i + 1];
      else
        right = 0;
    }
    return -1;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.pivotIndex([1, 2, -3, 6]));
}
