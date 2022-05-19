# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 + nums2).sort
  median = 0

  if nums.size.even?
    median_index = nums.size / 2
    median = nums[(median_index-1)..median_index].sum / 2.0
  else
    median_index = nums.size / 2 + nums.size % 2
    median = nums[median_index-1].to_f
  end

  median
end