# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, numRows)
  return s if numRows == 1

  arrs = Array.new(numRows) { Array.new() }
  arr_i, isDown = 0, true

  s.split("").each do |_s|
    arrs[arr_i] << _s
    isDown = false if arr_i >= numRows - 1
    isDown = true  if arr_i <= 0
    isDown ? arr_i += 1 : arr_i -= 1
  end

  arrs.flatten.join("")
end