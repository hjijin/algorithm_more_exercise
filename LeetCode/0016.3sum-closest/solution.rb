# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  res, nums_size, tar = 0, nums.length, 10**4

  for i in (0...nums_size - 2)
    two_sum = two_sum_closest(nums, i + 1, nums_size - 1, target - nums[i])

    if (nums[i] + two_sum - target).abs < tar
      res = nums[i] + two_sum
      tar = (nums[i] + two_sum - target).abs
    end
  end

  res
end

def two_sum_closest(nums, left, right, target)
  res, tar = 0, 10**4

  while left < right do 
    sum = nums[left] + nums[right]
    return sum if sum == target
    
    if (sum - target).abs < tar
      res = sum
      tar = (sum - target).abs
    end

    if sum < target
      left += 1
    else
      right -= 1
    end
  end

  res
end