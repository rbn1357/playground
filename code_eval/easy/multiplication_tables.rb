# CHALLENGE DESCRIPTION: Print out the grade school multiplication table upto 12*12.
# INPUT SAMPLE: There is no input for this program.
# OUTPUT SAMPLE: Print out the table in a matrix like fashion, each number 
  # formatted to a width of 4 (The numbers are right-aligned and strip out 
  # leading/trailing spaces on each line). The first 3 line will look like:

1.upto(12).each do |line_num|
  output = ""
  1.upto(12).each do |row_num|
    num = (line_num * row_num).to_s
    output << num.rjust(4)
  end
  puts output.lstrip
end