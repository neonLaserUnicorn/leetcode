class Solution {
  String predictPartyVictory(String senate) {
    final ans = {'R': 'Radiant', 'D': 'Dire'};

    return ans['R']!;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.predictPartyVictory("RD"));
}
