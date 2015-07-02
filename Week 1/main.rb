require_relative "currency"
require"pry"

puts "what currency do you have?"
code = gets.chomp
puts "How much do you have?"
amount = gets.chomp
puts "What currency do you want to conver to?"
wanted = gets.chomp.upcase

rates = 
{
"USD" => 1.0, 
"EUR" => 0.90,
"KRW" => 1122.05,
"JPY" => 123.16
}

currency = Currency.new code, amount, wanted


first_cur = currency.current_currency.upcase
first_amount = currency.current_amount
second_cur = currency.wanted
new_amount = first_amount.to_i * rates[wanted]
puts new_amount