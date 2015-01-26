class RandomNumberArrayGenerator
  def self.call(array_size, max_threshold)
    arr = []
    arr.tap do
      array_size.times { arr << rand(1..max_threshold) }
    end
  end
end
