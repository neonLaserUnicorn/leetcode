class Solution {
  String removeStars(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '*') {
        stack.removeLast();
        continue;
      }
      stack.add(s[i]);
    }
    return stack.join();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.removeStars("leet**cod*e"));
}
