operators = ["add", "sub", "mult", "div", "exp", "sq", "+", "-", "*", "**"]

def calculate(f, a, b) #giving method three objects
  if f.include? "add" || f == "+"
    add(a, b)
  elsif f.include? "sub" || f == "-"
    subtract(a, b)
  elsif f.include? "mult" || f == "*"
    multiply(a, b)
  elsif f.include? "div" || f == "/"
    divide(a, b)
  elsif f.include? "exp" || f == "**"
    exponent(a, b)
  elsif f.include? "sq"
    sqrt(a)
  else
    abort("That is not a mathematical function.")
  end
end

def print_result
  if f == "add"
    "#{num1} + #{num2}"
  end
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a/b
end

def exponent(a, b)
  a**b
end

def sqrt(a)
  Math.sqrt(a)
end

def get_num
  num = gets.chomp

  if num.empty?
    return 0
  end

  until num =~ /\d/
    puts "Please choose a number."
    num = gets.chomp
  end

  if num.include?"."
    num.to_f
  else
    num.to_i
  end
end

puts "Hello there! What kind of maths would you like to do?"
math  = gets.chomp.downcase


is_math_valid = false

operators.each do |operator|
  if math.include?(operator)
    is_math_valid = true
  end
end

if is_math_valid == false
  abort("This is not a mathematical function.")
end

num1 = ""
num2 = ""

if math != "sq"
  puts "What is the first number?"
  num1 = get_num
  puts "What is the second number?"
  num2 = get_num
else
  puts "What number would you like to get the square root of?"
  num1 = get_num
end

answer = calculate(math, num1, num2)

if math.include? "add" or math == "+"
  puts "#{num1} + #{num2} is #{answer}! That's a big number."
elsif math.include? "sub" or math == "-"
  puts "#{num1} - #{num2} is #{answer}! That's a big number."
elsif math.include? "mult" or math == "*"
  puts "#{num1} * #{num2} is #{answer}! That's a big number."
elsif math.include? "div" or math == "/"
  puts "#{num1} / #{num2} is #{answer}! That's a big number."
elsif math.include? "exp" or math == "**"
  puts "#{num1} to the #{num2} is #{answer}! That's a big number."
else
  puts "The square root of #{num1} is #{answer}!"
end
