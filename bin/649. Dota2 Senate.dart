class Solution {
  String predictPartyVictory(String senate) {
    final ans = {'R': 'Radiant', 'D': 'Dire'};
    int rBans = 0;
    int dBans = 0;
    String tmp = '';
    bool isWin = false;
    while (!isWin) {
      for (int i = 0; i < senate.length; i++) {
        if (senate[i] == 'R') {
          if (dBans > 0) {
            --dBans;
            continue;
          }
          ++rBans;
        }
        if (senate[i] == 'D') {
          if (rBans > 0) {
            --rBans;
            continue;
          }
          ++dBans;
        }
        tmp += senate[i];
      }
      senate = tmp;
      tmp = '';
      if (!senate.contains('R') || !senate.contains('D')) {
        isWin = true;
      }
    }

    return ans[senate[0]]!;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.predictPartyVictory("RD"));
}
