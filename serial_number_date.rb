# frozen_string_literal: true

# The program will calculate the ordinal number of the day in the year
# by the specified date. Enter the day / month / year.
puts 'Please enter the day:'
day = gets.chomp.to_i
puts 'Please enter the month:'
month = gets.chomp.to_i
puts 'Please enter the year:'
year = gets.chomp.to_i

months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months[1] = if (year % 4).zero? && (year % 100) != 0 || (year % 400).zero?
              29
            else
              28
            end

product = 0
months.each_with_index { |mon, index| product += mon if index < (month - 1) }
product += day
puts "Date: #{day}.#{month}.#{year}"
puts "Day of the year: #{product}"
