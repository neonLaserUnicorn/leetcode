class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> ans = [];

    int max = 0;
    candies.forEach((element) {
      if (element > max) max = element;
    });

    for (int i = 0; i < candies.length; i++) {
      ans.add(candies[i] + extraCandies >= max);
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.kidsWithCandies([2, 3, 5, 1, 3], 3));
}
