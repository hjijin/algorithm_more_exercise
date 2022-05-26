# @param {String} s
# @return {Integer}
def roman_to_int(s)
   nums = {
    'I': 1,
    'IV': 4,
    'V': 5,
    'IX': 9,
    'X': 10,
    'XL': 40,
    'L': 50,
    'XC': 90,
    'C': 100,
    'CD': 400,
    'D': 500,
    'CM': 900,
    'M': 1000,
  }
  i, result = 0, 0
  
  while i < s.length
    if i < s.length - 1 && !nums[s[i..i+1]].nil?
      result += nums[s[i..i+1].to_sym].to_i
      i += 2
    else
      result += nums[s[i].to_sym].to_i
      i += 1
    end
  end

  result
end