def binary_search(collection, search)
  low = 0
  high = collection.length - 1
  mid = (low + high) / 2

  if search == collection[low]
    low
  elsif search == collection[high]
    high
  end

  # while high < low

  # end
end

test_array = [1,2,3,4,5,6,7,8,9]

puts binary_search(test_array, 1) == 0
puts binary_search(test_array, 9) == 8

# I: collection, search_item
# O: index or nil

# Define variables
  # Low = 0, high = array.length - 1

# Loop until high is not larger than Low
  # If num is less than mid, high = mid -1
  # If num is more than mid, low = mid + 1

