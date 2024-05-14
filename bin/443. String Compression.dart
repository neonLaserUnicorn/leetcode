class Solution {
  int compress(List<String> chars) {
    String s = '';
    int len = 1;
    String temp = chars[0];
    for (int i = 1; i < chars.length; i++) {
      if (chars[i] == temp) {
        len++;
      } else {
        s += temp;
        if (len > 1) {
          s += len.toString();
        }
        len = 1;
        temp = chars[i];
      }
    }
    s += temp;
    if (len > 1) {
      s += len.toString();
    }

    for (int i = 0; i < s.length; i++) {
      chars[i] = s[i];
    }

    return s.length;
  }
}

void main() {
  Solution sol = Solution();
  var chars = ['a', 'a', 'b', 'b', 'c', 'c', 'c'];
  print(sol.compress(chars));

  print(chars);
}
