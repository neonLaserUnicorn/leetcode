class Solution {
  int largestAltitude(List<int> gain) {
    int max = 0;
    int cur = 0;

    for (int i = 0; i < gain.length; ++i) {
      cur += gain[i];
      if (cur > max) max = cur;
    }
    return max;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.largestAltitude([-4, -3, -2, -1, 4, 3, 2]));
}
