

class Solution {
  bool isPalindrome(int x) {
    int Reverse = 0;
    int Original;
    int Remainder;
    Original = x;
    while (x != 0) {
      Remainder = x % 10;
      Reverse = Reverse * 10 + Remainder;
      x = x ~/ 10;
    }
    return (Original == Reverse);
  }
}
