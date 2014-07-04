def merge_sort(arr)
  if arr.length <= 1
    arr
  else
    mid = (arr.length / 2)
    left = merge_sort(arr[0..mid - 1])
    right = merge_sort(arr[mid..arr.length])
    merge(right, left)
  end
end

def merge(right, left)
  if right.empty?
    left
  elsif left.empty?
    right
  elsif left.first < right.first
    [left.first] + merge(right, left[1..-1])
  else
    [right.first] + merge(right[1..-1], left) 
  end
    
end

def assert_equal(actual, expectation)
  puts "actual = #{actual} and expectation = #{expectation}" unless actual == expectation
end

assert_equal(merge_sort([1]), [1])
assert_equal(merge_sort([2,1]), [1,2])
assert_equal(merge_sort([1,2,4,3]), [1,2,3,4])
assert_equal(merge_sort([1,2,4,3]), [1,2,3,4])