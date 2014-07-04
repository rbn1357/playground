# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  max_palindrome = 0
  100.upto(999) do |outer_count|
    101.upto(999) do |inner_count|
      product = outer_count * inner_count
      if product.to_s == product.to_s.reverse && product > max_palindrome
        max_palindrome = product 
      end
    end
  end
  max_palindrome
end

puts largest_palindrome

# Big 0 analysis:
# Nested loop = n**2
# The amount of options are 900 per loop
# So my guess is 900**2
