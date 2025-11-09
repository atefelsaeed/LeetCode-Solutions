class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    final int n = nums.length;
    int closestSum = nums[0] + nums[1] + nums[2];

    for (int i = 0; i < n - 2; i++) {
      int left = i + 1;
      int right = n - 1;

      while (left < right) {
        final int currentSum = nums[i] + nums[left] + nums[right];

        if ((target - currentSum).abs() < (target - closestSum).abs()) {
          closestSum = currentSum;
        }

        if (currentSum < target) {
          left++;
        } else if (currentSum > target) {
          right--;
        } else {
          return target;
        }
      }
    }
    return closestSum;
  }
}
