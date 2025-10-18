class Solution {
  int minSubArrayLen(int target, List<int> nums) {
     final int n = nums.length;
    int minLength = 1 << 31;
    int currentSum = 0;
    int start = 0;

    for (int end = 0; end < n; end++) {
      currentSum += nums[end];

      while (currentSum >= target) {
        minLength = min(minLength, end - start + 1);
        currentSum -= nums[start];
        start++;
      }
    }

    return (minLength == (1 << 31)) ? 0 : minLength;
  }
}