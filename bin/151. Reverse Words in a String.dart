class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(' ');
    String ans = '';
    for (int i = words.length - 1; i >= 0; i--) {
      if (words[i] != '') {
        ans += '${words[i]} ';
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.reverseWords("   a good   example   "));
}
