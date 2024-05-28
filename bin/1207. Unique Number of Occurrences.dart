class Solution {
  bool uniqueOccurrences(List<int> arr) {
    bool ans = false;
    Map<int, int> repeats = {};
    for (int i = 0; i < arr.length; i++) {
      repeats.update(
        arr[i],
        (val) => val + 1,
        ifAbsent: () => 1,
      );
    }
    Set<int> set = repeats.values.toSet();
    if (set.length == repeats.length) {
      ans = true;
    }
    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.uniqueOccurrences([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]));
}
