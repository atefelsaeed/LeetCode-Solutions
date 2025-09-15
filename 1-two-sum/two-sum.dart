class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final map = <int, int>{};
      
    for (int i = 0; i <= nums.length - 1; i++) {
      int remains = target - nums[i];
      if (map.containsKey(remains)) { 
        return [ map[remains]!,i];
      }
      map[nums[i]] = i;
    }
      
    return [];
  }
}