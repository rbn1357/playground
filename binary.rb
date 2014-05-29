# I: collection, search_item
# O: index or nil

# Define variables
  # Low = 0, high = array.length - 1

# Loop until high is not larger than Low
  # If num is less than mid, high = mid -1
  # If num is more than mid, low = mid + 1

def binary_search(collection, search)
  low = 0
  high = collection.length - 1
  mid = (low + high) / 2

  while high > low
    mid = (low + high) / 2

    # return indexes for edge cases
    return low if collection[low] == search
    return high if collection[high] == search
    return mid if collection[mid] == search

    # adjusts high or low index values if search is not found
    low = mid + 1 if collection[mid] < search
    high = mid - 1 if collection[mid] > search
  end
  return nil
end

test_array = [1,2,3,4,5,6,7,8,9]

puts binary_search(test_array, 1) == 0
puts binary_search(test_array, 9) == 8

puts binary_search(test_array, 3)

