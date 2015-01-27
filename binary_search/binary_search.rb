require './random_number_array_generator'
require 'pry'

BinarySearch = Struct.new(:search_num) do
  def self.call(*args)
    new(*args).call
  end

  def call
    low = 0
    high = random_arr.count - 1

    until low > high
      mid = (low + high) / 2

      low = mid + 1 if search_num >= random_arr[mid]
      high = mid - 1 if search_num <= random_arr[mid]
    end

    random_arr[mid] == search_num ? mid : -1
  end

  private

  def random_arr
    @uniq_list ||= RandomNumberArrayGenerator.call(1000, 10_000)
  end
end
