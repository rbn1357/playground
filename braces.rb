# def check_braces(expressions)
#   expressions.each do |expression|

#     result = 1
#     result = 0 if expression.length.odd?
    
#     open_brackets = []
#     closed_brackets = []

#     expression.chars.each do |char|
#       if char.match(/\(|\[|\{/)
#         open_brackets << char
#       elsif char.match(/\)|\]|\}/)
#         closed_brackets << char
#       end
#     end
    
#     ordered_brackets = open_brackets.zip(closed_brackets).flatten

#     ordered_brackets.each_with_index do |char, i|
#       unless (i.even? && open_brackets.include?(char)) || (i.odd? && closed_brackets.include?(char))
#         result = 0
#       end
#     end
#     puts result
#   end
# end

# test = [")(){}", "[]({})", "([])", "{()[]}", "([)]", "[[[]"]

# check_braces(test)

def check_braces(expression)
  closers_to_openers_map = { ")" => "(", "]" => "[", "}" => "{" }

  openers = closers_to_openers_map.values

  stack = []

  expression.chars.each do |char|
    if openers.include?(char)
      stack.push(char)
    else
      return false unless stack.pop == closers_to_openers_map[char]
    end
  end
  return stack.empty?
end

puts check_braces("{[]()}") == true
puts check_braces("{[(])}") == false
puts check_braces("{[}") == false