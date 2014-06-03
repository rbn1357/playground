require 'benchmark'

def factorial(n)
  if n <= 1
    n
  else
    n * factorial(n-1)
  end
end

def tail_factorial(n, acc = 1)
  if n <= 1
    acc
  else
    tail_factorial(n-1, acc * n)
  end
end

def my_flatten(array)
  array.flat_map do |item|
    if item.is_a?(Array)
      my_flatten(item)
    else  
      item
    end
  end
end

class Fixnum
  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C", 
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",
        5 => "V",  
        4 => "IV",  
        1 => "I",  
        0 => "",  
  }
  def roman
    return '' if self == 0
    ROMAN_NUMBERS.each do |value, letter|
      return ( letter * (self / value)) << (self % value).roman if value <= self
    end
    # return (self % value).roman # This is not needed and seems to be a mistake.
  end
end

puts 1.roman
