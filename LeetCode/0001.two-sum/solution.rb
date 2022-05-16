# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, i|
    if nums.include?(target - num)
      return [i, nums.index(target - num)] if nums.index(target - num) != i
    end

    next
  end 
end
