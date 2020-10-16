# frozen_string_literal: true

# The amount of purchases. The user alternately enters the name of the product,
# the unit price and the quantity of the purchased product.
# The user can enter an arbitrary number of products until he enters "stop" as
# the name of the product. Based on the entered data, the following is required:
# Fill in and display a hash, the keys of which are the names of the goods, and
# the value is a nested hash containing the price per unit of the goods and
# the quantity of the purchased goods.
# Also display the total amount for each item.
# Calculate and display the total of all purchases in the "basket".

shopping_basket = {}
value_of_goods = {}
total_amount = 0
loop do
  puts 'Please enter the name of the product:'
  puts "To finish, enter 'stop'"
  name = gets.chomp
  break if name == 'stop'

  puts 'Please enter the cost:'
  price = gets.chomp.to_f
  puts 'Please enter the quantity'
  quantity = gets.chomp.to_i
  shopping_basket[name] = { price => quantity }
  value_of_goods[name] = price * quantity
end
value_of_goods.each_value { |value| total_amount += value }
puts "Total amount for each item: #{shopping_basket}"
puts "Total cost for each item: #{value_of_goods}"
puts "The total of all purchases: #{total_amount}"
