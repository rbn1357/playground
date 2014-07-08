class String
  def my_reverse
    (self.length / 2).times do |count|
      left = self[count]
      right = self[- (count + 1)]

      self[count] = right
      self[- (count + 1)] = left      
    end
    self 
  end
end

puts "apple".my_reverse == "elppa"
puts "book".my_reverse == "koob"
