# CHALLENGE DESCRIPTION: Write a program to remove specific characters from a string.
# INPUT SAMPLE: The first argument will be a path to a filename containing an input 
  #string followed by a comma and then the characters that need to be scrubbed.
# OUTPUT SAMPLE: Print to stdout, the scrubbed strings, one per line. Trim out any 
  # leading/trailing whitespaces if they occur.

File.open(ARGV[0]).each_line do |line|
  normalized_line = line.chomp
  line, scrub_chars = normalized_line.split(', ')
  scrub_chars = scrub_chars.chars
  output = ""

  line.each_char do |char|
    output << char unless scrub_chars.include?(char)
  end
  $stdout.puts(output)
end