# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calculation = WhizBangCalculator.new

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

result = calculation.hypotenuse(4,3)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

result = calculation.exponent(4,2)

puts "Your method returned:"
puts result
puts

if result == 16
  puts "PASS!"
else
  puts "F"
end