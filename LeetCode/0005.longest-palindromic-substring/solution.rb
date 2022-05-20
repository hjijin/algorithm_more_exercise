# @param {String} s
# @return {String}
def longest_palindrome(s)
  s_length = s.length
  return s if s_length < 2

  longest = ''
  for i in (0..s_length - 1) do
    oddstr = sub_str(s, i, i)
    evenstr = sub_str(s, i, i+1)

    temp = (oddstr.length > evenstr.length)? oddstr : evenstr

    longest = temp if temp.length > longest.length
  end

  longest
end

def sub_str(s, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end

  s[left+1..right-1]
end