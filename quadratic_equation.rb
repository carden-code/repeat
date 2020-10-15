# frozen_string_literal: true

# The user enters 3 coefficients a, b and c.
# The program calculates the discriminant (D) and
# roots of the equation (x1 and x2, if any) and
# displays the values of the discriminant and roots on the screen.
puts 'Solving a quadratic equation.'
puts "Please enter the coefficients where 'a' is not equal to 0"
puts 'Please enter the coefficient a = :'
a = gets.chomp.to_f
if a.zero?
  puts 'Not a quadratic equation.'
  return
end
puts 'Please enter the coefficient b = :'
b = gets.chomp.to_f
puts 'Please enter the coefficient c = :'
c = gets.chomp.to_f

discriminant = b**2 - (4 * a * c)
puts "Discriminant: #{discriminant}"
if discriminant.positive?
  x1 = (-b + Math.sqrt(discriminant)) / (2 * a)
  x2 = (-b - Math.sqrt(discriminant)) / (2 * a)
  puts "First root of the equation: #{x1}"
  puts "Second root of the equation: #{x2}"
elsif discriminant.zero?
  x = -b / (2 * a)
  puts "Root of the equation: #{x}"
else
  puts 'No roots.'
end
