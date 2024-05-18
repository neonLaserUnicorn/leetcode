class Solution {
  int longestOnes(List<int> nums, int k) {
    int zeros = 0;
    int ones = 0;
    int left = 0;
    int right = 0;
    int max = 0;
    while (right < nums.length) {
      while (zeros > k && left < nums.length) {
        if (nums[left] == 0) {
          zeros--;
          ones--;
        } else {
          ones--;
        }
        left++;
      }
      if (nums[right] == 1) {
        ones++;
      } else {
        zeros++;
        ones++;
      }
      right++;
      if (ones > max && zeros <= k) {
        max = ones;
      }
    }

    if (ones > max && zeros <= k) {
      max = ones;
    }

    return max;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.longestOnes(
      [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3));
}
