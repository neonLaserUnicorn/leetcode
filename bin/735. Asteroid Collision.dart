class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    List<int> pos = [];
    for (var i in asteroids) {
      if (i > 0) {
        pos.add(i);
        continue;
      }

      while (pos.isNotEmpty && pos.last > 0 && pos.last < -i) {
        pos.removeLast();
      }

      if (pos.isNotEmpty && pos.last == -i) {
        pos.removeLast();
        continue;
      }

      if (pos.isEmpty || pos.last < 0) {
        pos.add(i);
      }
    }
    return pos;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.asteroidCollision([5, 10, -5]));
}
