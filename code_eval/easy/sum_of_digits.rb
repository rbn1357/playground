# CHALLENGE DESCRIPTION: Given a positive integer, find the sum of its constituent digits.
# INPUT SAMPLE: The first argument will be a path to a filename containing positive integers, one per line.
# OUTPUT SAMPLE: Print to stdout, the sum of the numbers that make up the integer, one per line.


File.open(ARGV[0]).each_line do |line|
  nums = line.chomp.chars.map(&:to_i)
  $stdout.puts(nums.inject(:+))
end