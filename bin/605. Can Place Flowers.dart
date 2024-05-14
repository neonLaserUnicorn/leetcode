class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    if (flowerbed.isEmpty) {
      return false;
    }
    if (flowerbed.length == 1) {
      return n <= (flowerbed[0] == 0 ? 1 : 0);
    }
    int count = 0;
    int adj = 0;
    if (flowerbed[0] == 0 && flowerbed[1] == 0) {
      ++adj;
    }
    for (int i = 1; i < flowerbed.length - 1; ++i) {
      if (flowerbed[i] == 0 && flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0) {
        ++adj;
      } else {
        count += adj ~/ 2 + adj % 2;
        adj = 0;
      }
    }
    if (flowerbed[flowerbed.length - 1] == 0 &&
        flowerbed[flowerbed.length - 2] == 0) {
      ++adj;
    }
    count += adj ~/ 2 + adj % 2;
    return n <= count;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.canPlaceFlowers([1, 0, 0, 0, 1], 2));
}
