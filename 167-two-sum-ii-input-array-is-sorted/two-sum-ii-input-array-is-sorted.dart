class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int left = 0;
    int right = numbers.length - 1;
    while (left < right) {
      final int currentSum = numbers[left] + numbers[right];

      if (currentSum == target) {
        return <int>[left + 1, right + 1];
      } else if (currentSum < target) {
        left++;
      } else {
        right--;
      }
    }
    return <int>[];
  }
}