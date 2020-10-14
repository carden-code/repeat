# frozen_string_literal: true

# Make a hash containing months and number of days in a month.
# In a loop, display those months with exactly 30 days.
months = { 'January' => 31, 'February' => 29, 'March' => 31,
           'April' => 30, 'May' => 31, 'June' => 30,
           'July' => 31, 'August' => 31, 'September' => 30,
           'October' => 31, 'November' => 30, 'December' => 31 }
months.each { |key, value| puts key if value.eql? 30 }
