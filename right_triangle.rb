# frozen_string_literal: true

# The program asks the user for the 3 sides of a triangle and determines whether
# the triangle is rectangular, isosceles or equilateral and
# displays the result on the screen.
array = []
puts 'Please enter the first side'
array << gets.chomp.to_i
puts 'Please enter the second side'
array << gets.chomp.to_i
puts 'Please enter the third party'
array << gets.chomp.to_i

hypotenuse = array.max
first, second = array.min(2)

if hypotenuse**2 == first**2 + second**2
  puts 'Triangle rectangular'
elsif hypotenuse == first || hypotenuse == second || second == first
  puts 'Triangle isosceles'
elsif hypotenuse == first && first == second
  puts 'Triangle equilateral and isosceles'
else
  puts 'Triangle versatile'
end
