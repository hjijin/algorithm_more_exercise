# @param {Integer[]} nums
# @return {Integer}
# nums = [0,0,1,1,1,2,2,3,3,4]
def remove_duplicates(nums)
  n = 0
  for i in 0...nums.size do 
    if i == 0 || nums[i] != nums[i - 1]
      nums[n] = nums[i]
      n += 1
    end
  end

  n
end