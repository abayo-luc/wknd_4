# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Operations
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end 

class SimpleCalculator
  include Operations
end

class FancyCalculator
  include Operations 

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

calculation = FancyCalculator.new

puts "TESTING find_missing_letter..."
puts

result = calculation.add(3,2)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

result = calculation.subtract(3,2)

puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

result = calculation.multiply(3,2)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

result = calculation.divide(6,2)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

result = calculation.square_root(9)

puts "Your method returned:"
puts result
puts

if result == 3.0
  puts "PASS!"
else
  puts "F"
end