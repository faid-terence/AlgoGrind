class Solution {
 int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  // Initialize the slow pointer
  int slow = 0;

  // Iterate through the array with the fast pointer
  for (int fast = 1; fast < nums.length; fast++) {
    // Check if the current element is different from the last unique element
    if (nums[fast] != nums[slow]) {
      slow++;
      nums[slow] = nums[fast];
    }
  }

  // Return the count of unique elements
  return slow + 1;
}

}