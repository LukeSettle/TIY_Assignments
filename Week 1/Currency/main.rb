require_relative "Currency"
require_relative "Converter"
require "pry"


# puts "$".ord

# puts "this is USD $"
# puts "this is euro \u20AC"
# puts "this is Yen#{165.chr}"

dollar = Currency.new "usd", 100

dollar2 = Currency.new "usd", 5

money = [ dollar2.current_amount, dollar.current_amount]

puts money.sort

converted = Converter.new  :first => 1.0, :new => "eur"
binding.pry
puts converted.first
puts converted.new
