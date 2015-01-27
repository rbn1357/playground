class RandomNumberArrayGenerator
  def self.call(array_size, max_threshold)
    [].tap do |arr|
      array_size.times { arr << rand(1..max_threshold) }
    end.uniq.sort
  end
end
