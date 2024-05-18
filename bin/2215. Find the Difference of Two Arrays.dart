class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();
    List<List<int>> ans = [];

    ans.add(nums1.where((element) => !set2.contains(element)).toSet().toList());
    ans.add(nums2.where((element) => !set1.contains(element)).toSet().toList());
    return ans;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.findDifference([1, 2, 3], [2, 4, 6]));
}
