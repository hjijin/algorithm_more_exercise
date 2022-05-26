# @param {Integer} num
# @return {String}
def int_to_roman(num)
  nums = [
    ["M", 1000],
    ["CM", 900],
    ["D", 500],
    ["CD", 400],
    ["C", 100],
    ["XC", 90],
    ["L", 50],
    ["XL", 40],
    ["X", 10],
    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["I", 1]
  ]

  result = []
  nums.each do |k, v|
    while num >= v
      result << k
      num -= v
    end
  end

  result.join('')
end