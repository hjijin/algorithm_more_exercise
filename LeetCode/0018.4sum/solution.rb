# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  n, arr = nums.length, []
  return [] if n < 4

  nums.sort!
  for i in (0..n - 3)
    next if i > 0 && nums[i] == nums[i - 1]

    for j in (i + 1..n - 2)
      next if j > i + 1 && nums[j] == nums[j - 1]

      k, l = j + 1, n - 1

      while k < l
        if nums[i] + nums[j] + nums[k] + nums[l] == target
          arr << [nums[i], nums[j], nums[k], nums[l]]
          k += 1
          l -= 1
        elsif nums[i] + nums[j] + nums[k] + nums[l] < target
          k += 1
        else
          l -= 1
        end
      end
    end
  end

  arr.uniq
end