class Solution {
  isValid(String s) {
    var type1 = true;
    var type2 = true;
    var type3 = true;
    var array = [];

    for (var char in s.split('')) {
      switch (char) {
        case '(':
          type1 = false;
          array.add('type1');
          break;
        case ')':
          type1 = array.isEmpty ? false : array.removeLast() == 'type1';
          break;
        case '[':
          type2 = false;
          array.add('type2');
          break;
        case ']':
          type2 = array.isEmpty ? false : array.removeLast() == 'type2';
          break;
        case '{':
          type3 = false;
          array.add('type3');
          break;
        case '}':
          type3 = array.isEmpty ? false : array.removeLast() == 'type3';
          break;
        default:
          break;
      }
    }
    return type1 && type2 && type3;
  }
}
