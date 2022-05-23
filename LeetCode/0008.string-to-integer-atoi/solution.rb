# @param {String} s
# @return {Integer}
def my_atoi(s)
  s = s.lstrip
  return 0 if s.length == 0

  str = s.match(/^[-+]?\d+/)
  unless str.nil?
    num = str[0].to_i

    return -2**31 if num <= -2**31
    return (2**31 - 1) if num >= (2**31 - 1)
    return num
  end

  0
end