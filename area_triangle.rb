# frozen_string_literal: true

# The program should query the base and
# height of the triangle and return its area.
puts 'Please enter the base of the triangle:'
base = gets.chomp.to_i
puts 'Please enter the height of the triangle'
height = gets.chomp.to_i
area_triangle = 0.5 * base * height
puts "The area of ​​the triangle is #{area_triangle}"
