# @param {String} s
# @param {Integer} num_rows
# @return {String}
# s = "PAYPALISHIRING", num_rows = 4
def convert(str, num_rows)
  return str if num_rows = 1

  group = 2 * num_rows - 2
  arrs = []

  for i in (1..numRows + 1) do 
    if i == numRows
      interval = group
    else
      interval = 2 * numRows - 2 * i
    end

    idx = i - 1
    while idx < str.length
      arrs << str[idx]
      idx += interval
      interval = group - interval
      
      interval = group if interval == 0
    end
  end

  arrs.join("")
end