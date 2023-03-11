class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int n = nums.length ;
    for(var i = 0;i<n-1;i++){
      for (var j =i+1 ;j<n;j++){
        if(nums[i]+nums[j]==target){
          return [i, j];
        }
      }
    }
return[];
  }
}