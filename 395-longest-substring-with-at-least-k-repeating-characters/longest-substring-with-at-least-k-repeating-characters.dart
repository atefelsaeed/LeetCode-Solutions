class Solution {
int longestSubstring(String s, int k) {
    int maxLen = 0;
    for (int uniqueTarget = 1; uniqueTarget <= 26; uniqueTarget++) {
      final Map<String, int> freq = <String, int>{};
      int start = 0;
      int end = 0;
      int uniqueCount = 0;
      int countAtLeastK = 0;

      while (end < s.length) {
        final String endChar = s[end];
        freq[endChar] = (freq[endChar] ?? 0) + 1;
        if (freq[endChar] == 1) uniqueCount++;
        if (freq[endChar] == k) countAtLeastK++;

        while (uniqueCount > uniqueTarget) {
          final String startChar = s[start];
          if (freq[startChar] == k) countAtLeastK--;
          freq[startChar] = freq[startChar]! - 1;
          if (freq[startChar] == 0) uniqueCount--;
          start++;
        }

        if (uniqueCount == uniqueTarget && uniqueCount == countAtLeastK) {
          maxLen = maxLen < (end - start + 1) ? (end - start + 1) : maxLen;
        }

        end++;
      }
    }

    return maxLen;
  }
}