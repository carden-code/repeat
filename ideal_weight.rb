# frozen_string_literal: true

# The program asks the user for the name and height
# and displays the ideal weight according to the formula.
puts 'Please enter your name:'
name = gets.chomp
puts 'Please enter your height:'
height = gets.chomp.to_i
ideal_weight = (height - 110) * 1.15

if ideal_weight.negative?
  puts "#{name} your weight is already optimal"
else
  puts "#{name} your ideal weight #{ideal_weight} kg."
end
