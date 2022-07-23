require_relative './stack'

def balancing_parentheses(string)
    stack = Stack.new
    opens = 0
    string.chars.each do |char|
        if char == '('
            stack.push(char)
            opens += 1
        elsif char == ')' && opens > 0
            opens -=1
            stack.pop
        else 
            stack.push(char)
        end
    end
    stack.size
end
