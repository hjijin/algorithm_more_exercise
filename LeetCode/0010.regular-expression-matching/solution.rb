# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  recursive(s, p, 0, 0, memo = {})
end

def recursive(s, p, i, j, memo)
  return memo["#{i},#{j}"] unless memo["#{i},#{j}"].nil?
  return i == s.length if j == p.length

  tmp = i < s.length && (s[i] == p[j] || p[j] == '.')
  ans = false

  if p[j + 1] == '*'
    ans = recursive(s, p, i, j + 2, memo) || (tmp && recursive(s, p, i + 1, j, memo));
  else
    ans = tmp && recursive(s, p, i + 1, j + 1, memo);
  end

  memo["#{i},#{j}"] = ans

  return ans
end