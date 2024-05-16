class Solution {
  int maxVowels(String s, int k) {
    int max = 0;
    int start = 0;
    int end = 0;
    int current = 0;
    for (int i = 0; i < s.length; ++i) {
      String tmp = s[start];
      if (end >= k) {
        if (tmp == 'a' || tmp == 'e' || tmp == 'i' || tmp == 'o' || tmp == 'u')
          current--;
        start++;
      }
      tmp = s[end];
      if (tmp == 'a' || tmp == 'e' || tmp == 'i' || tmp == 'o' || tmp == 'u') {
        current++;
        if (current > max) {
          max = current;
        }
      }
      end++;
    }

    return max;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.maxVowels("abciiidef", 3));
}
