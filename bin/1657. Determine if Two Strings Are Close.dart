class Solution {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) return false;
    Map<String, int> map1 = {};
    Map<String, int> map2 = {};
    Map<int, int> count1 = {};
    Map<int, int> count2 = {};

    for (int i = 0; i < word1.length; i++) {
      map1.update(word1[i], (value) => value + 1, ifAbsent: () => 1);
    }
    for (int i = 0; i < word2.length; i++) {
      map2.update(word2[i], (value) => value + 1, ifAbsent: () => 1);
    }

    map1.entries.forEach((element) {
      count1.update(element.value, (value) => value + 1, ifAbsent: () => 1);
    });
    map2.entries.forEach((element) {
      count2.update(element.value, (value) => value + 1, ifAbsent: () => 1);
    });

    bool ans = true;

    Set<String> set1ch = map1.keys.toSet();
    Set<String> set2ch = map2.keys.toSet();

    Set<int> set1 = map1.values.toSet();
    Set<int> set2 = map2.values.toSet();

    ans = set1.containsAll(set2) &&
        set2.containsAll(set1) &&
        set1ch.containsAll(set2ch) &&
        set2ch.containsAll(set1ch);
    for (var element in count1.entries) {
      if (element.value != count2[element.key]) ans = false;
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.closeStrings("abc", "bca"));
}
