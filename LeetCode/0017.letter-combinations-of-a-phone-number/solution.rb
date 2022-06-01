# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  alphanumerics = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz',
  }

  return [] if digits.length == 0

  strs = []
  digits.split('').each do |i|
    strs = combination(strs, alphanumerics[digits[i]])
  end

  strs.flatten
end

def combination(strs, alphanumeric)
  return alphanumeric.split('') if strs.empty?

  strs = strs.map do |str|
    alphanumeric.split('').map{|s| str + s}
  end

  strs.flatten
end