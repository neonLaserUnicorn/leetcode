import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int max = 0;
    int left = 0;
    int right = height.length - 1;
    while (left < right) {
      int area = (right - left) * min(height[left], height[right]);
      if (area > max) {
        max = area;
      }
      if (height[left] < height[right]) {
        left++;
      } else {
        // height[left] >= height[right]
        right--;
      }
    }

    return max;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]));
}
