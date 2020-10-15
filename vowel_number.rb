# frozen_string_literal: true

# Fill in the hash with vowels, where the value is the ordinal number
# of the letter in the alphabet (a - 1).
hash = {}
alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
vowels = %w[a e i o u]

alphabet.each_with_index { |letter, index| hash[letter] = index + 1 if vowels.include?(letter) }
puts hash
