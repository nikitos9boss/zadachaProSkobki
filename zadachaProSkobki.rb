# frozen_string_literal: true

def is_valid(s)
  stack = []
  brackets = { '(' => ')', '[' => ']', '{' => '}' }
  s.each_char do |c|
    if brackets.keys.include?(c)
      stack.push(c)
    elsif brackets.values.include?(c)
      return false if stack.empty? || brackets[stack.pop()] != c
    end
  end
  stack.empty?
end

puts is_valid("(){}[]")   # true
puts is_valid("([{}])")   # true
puts is_valid("(}")       # false
puts is_valid("[(])")     # false
puts is_valid("[({})](]") # false
puts("==================================\nproverka\nputs is_valid(\"(){[](((((())))))))))}}}}}}}} \")")
puts is_valid("(){[](((((())))))))))}}}}}}}}") # false
puts("==================================\nproverka\nputs is_valid(\"()[] \")")
puts is_valid("()[]")   # true


