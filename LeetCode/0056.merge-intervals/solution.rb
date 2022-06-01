# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals_size = intervals.length
  return intervals if intervals_size == 1
  intervals.sort!
  new_intervals, i = [], 0
  while i < intervals_size
    l, r = intervals[i]
    i += 1
    while i < intervals_size && r >= intervals[i][0]
      r = [r, intervals[i][1]].max
      i += 1
    end

    new_intervals << [l, r]
  end

  new_intervals
end