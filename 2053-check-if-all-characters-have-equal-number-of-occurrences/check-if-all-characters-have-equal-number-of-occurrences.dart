class Solution {
    //Pass the String here
  bool areOccurrencesEqual(String s) {
  final Map<String, int> freq = {};

    for (var ch in s.split('')) {
      freq[ch] = (freq[ch] ?? 0) + 1;
    }

    final iterator = freq.values.iterator;
    if (!iterator.moveNext()) return true; 

    final first = iterator.current;
    while (iterator.moveNext()) {
      if (iterator.current != first) return false;
    }

    return true;
}
}