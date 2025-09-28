class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int maxArea = 0;

    while (left < right) {
      int width = right - left;

      int minHeight = height[left] < height[right] ? height[left] : height[right];

      int currentArea = width * minHeight;

      if (currentArea > maxArea) {
        maxArea = currentArea;
      }

      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;
  }

}