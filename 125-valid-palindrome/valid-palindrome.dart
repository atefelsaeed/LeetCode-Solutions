class Solution {
  bool isPalindrome(String s) {
    final normalized = s
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]'), '');

    int left = 0;
    int right = normalized.length - 1;

    while (left < right) {
        if (normalized[left] != normalized[right]) return false;
        left++;
        right--;
    }
    return true;
  }
}