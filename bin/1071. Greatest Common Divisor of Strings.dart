class Solution {
  String gcdOfStrings(String str1, String str2) {
    int len = str1.length.gcd(str2.length);
    var temp1 = str1.substring(0, len);
    var temp2 = str2.substring(0, len);
    var ans = temp1;
    if (temp2 != temp1) {
      return '';
    }
    temp1 *= str1.length ~/ len;
    temp2 *= str2.length ~/ len;
    if (temp1 != str1 || temp2 != str2) {
      return '';
    }
    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.gcdOfStrings("ABABABAB", "ABAB"));
}
