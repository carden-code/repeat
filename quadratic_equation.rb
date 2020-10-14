# frozen_string_literal: true

# The user enters 3 coefficients a, b and c.
# The program calculates the discriminant (D) and
# roots of the equation (x1 and x2, if any) and
# displays the values of the discriminant and roots on the screen.
puts 'Solving a quadratic equation.'
puts "Please enter the coefficients where 'a' is not equal to 0"
puts 'Please enter the coefficient a:'
a = gets.chomp.to_i
puts 'Please enter the coefficient b:'
b = gets.chomp.to_i
puts 'Please enter the coefficient c:'
c = gets.chomp.to_i

discriminant = b**2 - (4 * a * c)
puts "Discriminant: #{discriminant}"
if discriminant.positive?
  first = (-b + Math.sqrt(discriminant)) / (2 * a)
  second = (-b - Math.sqrt(discriminant)) / (2 * a)
  puts "First root of the equation: #{first}"
  puts "Second root of the equation: #{second}"
elsif discriminant.zero?
  root = -b / (2 * a)
  puts "Root of the equation: #{root}"
else
  puts 'No roots'
end
