# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return strs.first if strs.length == 1
  min_str_length = strs.map(&:length).min
  common_prefixs, i = [], 0
  while i < min_str_length - 1
    common_prefix = strs.map{|str| str[i] }.uniq
    if common_prefix.length == 1
      common_prefixs += common_prefix
      i += 1
    else
      i += min_str_length
    end
  end

  common_prefixs.join("")
end