require_relative "Currency"
require "pry"


# puts "$".ord

# puts "this is USD $"
# puts "this is euro \u20AC"
# puts "this is Yen#{165.chr}"

dollar = Currency.new "usd", 100

dollar2 = Currency.new "usd", 5

money = [ dollar2.current_amount, dollar.current_amount]

puts money.sort