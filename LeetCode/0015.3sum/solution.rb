# @param {Integer[]} nums
# @return {Integer[][]}
# nums = [-1,0,1,2,-1,-4]
def three_sum(nums)
  return [] if nums.length < 3

  nums.sort!
  res = []
  for i in 0..(nums.length - 3)
    next if i > 0 && nums[i - 1] == nums[i]
    j = i + 1
    k = nums.length - 1
    while j < k do
      sum = nums[i] + nums[j] + nums[k]
      if sum < 0
        j += 1
      elsif sum > 0
        k -= 1
      else
        res << [nums[i], nums[j], nums[k]]
        j += 1
        k -= 1
        j += 1 if nums[j] == nums[j - 1]
        k -= 1 if nums[k] == nums[k + 1]
      end
    end
  end

  res.uniq
end