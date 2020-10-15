# frozen_string_literal: true

# Fill the array with numbers from 10 to 100 in increments of 5.
array = []
numbers = 10..100
numbers.step(5) { |number| array << number }
puts array
