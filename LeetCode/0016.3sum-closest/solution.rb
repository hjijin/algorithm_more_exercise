# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  sum, res = 0, 0
  for i in 0..(nums.length - 3)
    next if i > 0 && nums[i] == nums[i - 1]

    j = i + 1
    k = nums.length - 1
    cur = nums[i] + nums[j] + nums[i + 2]

    if cur > target
      new_sum = (cur - target).abs

      if new_sum < sum
        sum = new_sum
        res = cur
      end

      break
    end

    while j < k do
      cur = nums[i] + nums[j] + nums[k]
      return target if cur == target

      new_sum = (cur - target).abs

      if new_sum < sum
        sum = new_sum
        res = cur
      end

      if cur < target
        left += 1 if nums[left] == nums[left + 1]
        left += 1
        next
      else
        right -= 1 if nums[right] == nums[right - 1]
        right -= 1 
        next
      end
    end
  end

  res
end