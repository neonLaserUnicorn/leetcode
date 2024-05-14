class Solution {
  bool increasingTriplet(List<int> nums) {
    int first = 2.0e10.toInt();
    int second = first;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] <= first) {
        first = nums[i];
      } else if (nums[i] <= second) {
        second = nums[i];
      } else {
        return true;
      }
    }

    return false;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.increasingTriplet([2, 1, 5, 0, 4, 6]));
}
