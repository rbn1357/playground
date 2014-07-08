# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.
 
def highest_product(arr)
  highest = arr[0]
  lowest = arr[0]
 
  # This just set the absolute baseline to work with.
  # Grab the first (n) elements and multiply them.  Then as we walk through continue to look for
  # higher numbers
  highest_of_three = highest_of_two = lowest_of_two = 0
 
  arr.each do |current|
    highest_of_three = [
      highest_of_three, 
      (highest_of_two * current),
      (lowest_of_two * current)
    ].max
 
    highest_of_two = [
      highest_of_two,
      current * highest,
      current * lowest
    ].max
 
    lowest_of_two = [
      lowest_of_two,
      current * highest,
      current * lowest
    ].min
 
    highest = [highest, current].max
    lowest = [lowest, current].min 
  end
 
  highest_of_three
end
 
def assert_equal(actual, expected)
  puts "Expected: #{expected} and got #{actual}" unless actual == expected
end
 
assert_equal(highest_product([1,4,5,3,6]), 120)
assert_equal(highest_product([1,10,1,1,1,1]), 10)