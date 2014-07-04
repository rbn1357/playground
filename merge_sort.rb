def merge_sort(arr)
  return arr if arr.size == 1

end

def assert_equal(actual, expectation)
  puts "actual = #{actual} and expectation = #{expectation}" unless actual == expectation
end

assert_equal(merge_sort([1]), [1])