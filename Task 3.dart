class Solution {
  int romanToInt(String s) {
    Map<String, int> romanMap = <String, int>{
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    int n = s.length;
    var nums = romanMap[s[n - 1]];
    for (var i = n - 2; i >= 0; i--) {
      if (romanMap[s[i]]! >= romanMap[s[i + 1]]!) {
        if (nums != null) {
          nums += romanMap[s[i]]!;
        }
      } else {
        if (nums != null) {
          nums -= romanMap[s[i]]!;
        }
      }
    }
    return nums!;
  }
}
