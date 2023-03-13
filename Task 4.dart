
class Solution {
  String longestCommonPrefix(List<String> strs) {
  int minumumLength =strs[0].length;
  for(int i=0;i<strs.length;i++){
    if(strs[i].length<minumumLength){
      minumumLength=strs[i].length;
    }
  }

  String commonPrefix ="";
  for(int i=0;i<minumumLength;i++){
    String currentChar = strs[0][i];
    for(int j=0;j<strs.length;j++){
      if(strs[j][i]!=currentChar){
        return commonPrefix;
      }
      
    }
    commonPrefix+=currentChar;
  }
  return commonPrefix;
}
}