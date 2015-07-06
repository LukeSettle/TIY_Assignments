require_relative "Currency"
require_relative "Converter"
require "pry"
# How do I get user input to use these variables...
Euro = "€"  
Yen = "¥"  
Dollar = "$"

puts "Available currencies are #{Euro} #{Yen} and #{Dollar}"
puts "What would you like to convert?"
given_cur = gets.chomp
puts "What do you want to convert to?"
given_code = gets.chomp

money3 = Currency.new given_cur

# Currency Objects
money = Currency.new  "$15.0"
money2 = Currency.new "$100"

# Converter objects
obj = Converter.new 
#takes parameter of a Currency Object and the currency to change into
obj.convert money3, given_code
