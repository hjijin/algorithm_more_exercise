# @param {Integer} x
# @return {Integer}
def reverse(x)
  is_negative = x.negative?? true : false

  begin
    x = x.abs.to_s.reverse!.to_i
    raise unless -2**31 <= x && x <= 2**31 - 1
  rescue
    x = 0
  end

  is_negative ? -x : x
end