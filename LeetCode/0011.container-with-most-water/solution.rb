# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  i, j, res = 0, height.length - 1, 0

  while i < j
    t = (j - i) * [height[i], height[j]].min
    res = [res, t].max
    if height[i] < height[j]
       i += 1
    else 
      j -= 1
    end
  end

  res
end
