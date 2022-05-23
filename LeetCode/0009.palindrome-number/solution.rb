# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  # 解法一：
  # str = x.to_s
  # left, right = 0, str.length - 1;
  #
  # while left < right do
  #   return false if str[left] != str[right]
  #   left  += 1
  #   right -= 1
  # end
  #
  # return true

  # 解法二：121
  y, i = 0, x
  while i != 0 do
    y = y * 10 + i % 10
    i /= 10
  end

  return x == y
end