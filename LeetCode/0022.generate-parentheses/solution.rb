# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  ans, left, right, str = [], 0, 0, ""

  generate(ans, left, right, str, n)
end

def generate(ans, left, right, str, n)
  if left == n && right == n
    ans << str
    return
  end

  if left < n
    generate(ans, left + 1, right, str + '(', n)
  end

  if right < left
    generate(ans, left, right + 1, str + ')', n)
  end

  ans
end