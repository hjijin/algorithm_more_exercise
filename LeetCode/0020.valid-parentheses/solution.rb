# @param {String} s
# @return {Boolean}
def is_valid(s)
  n = s.length
  return false if n < 2 || n.odd?

  strs = ""
  
  s.split("").each do |str|
    if ["(", "[", "{"].include?(str)
      strs << str
    else
      if (str == ")" && strs[strs.length - 1] == "(") || (str == "]" && strs[strs.length - 1] == "[") || (str == "}" && strs[strs.length - 1] == "{")
        strs = strs.length > 1 ? strs[0..strs.length - 2] : ""
      else
        return false
      end
    end
  end

  strs == ""
end