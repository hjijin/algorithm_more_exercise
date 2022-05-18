# @param {String} s
# @return {Integer}
def length_of_longest_substring(str)
  return 0 if str.empty?

  arr, lenghts = [], []
  str.split("").each do |s|
    if arr.include?(s)
      lenghts << arr.size
      arr.slice!(0..arr.index(s))
    end
    
    arr << s
  end

  lenghts << arr.size
  lenghts.max
end