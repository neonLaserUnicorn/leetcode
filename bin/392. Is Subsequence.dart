class Solution {
  bool isSubsequence(String s, String t) {
    if (s.length > t.length) return false;
    int i = 0;
    for (int j = 0; j < t.length; j++) {
      if (i < s.length && s[i] == t[j]) {
        ++i;
      }
    }
    return i == s.length;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.isSubsequence("abc", "ahbgd"));
}
