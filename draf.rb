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

result = WhizBangCalculator.new
puts result.add(2,3)
puts result.subtract(3,2)
puts result.multiply(3,2)
puts result.divide(6,2)
puts result.square_root(9)
puts result.hypotenuse(4,3)
puts result.exponent(4,2)