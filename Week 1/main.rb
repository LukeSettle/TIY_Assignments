require_relative "currency"
require"pry"

puts "what currency do you have?"
code = gets.chomp
puts "How much do you have?"
amount = gets.chomp
puts "What currency do you want to conver to?"
wanted = gets.chomp.upcase

US_rates = 
{
"USD" => 1.0, 
"EUR" => 0.90,
"KRW" => 1122.05,
"JPY" => 123.16
}

EUR_rates = {
"USD" => 1.11,
"EUR" => 1.0,
"KRW" => 1244.52,
"JPY" => 136.45
}

KRW_rates = {
"USD" => 0.00089,
"EUR" => 0.00080,
"KRW" => 1.0,
"JPY" => 0.11
}

JPY_rates = {
"USD" => 0.0081,
"EUR" => 0.0081,
"KRW" => 9.12,
"JPY" => 1.0
}


currency = Currency.new code, amount, wanted
while wanted = gets.chomp
	case 
	when second_cur == "US"
		first_cur = currency.current_currency.upcase
		first_amount = currency.current_amount
		second_cur = currency.wanted
		new_amount = first_amount.to_i * US_rates[wanted]
		puts new_amount
	break
	when second_cur == "EUR"
		first_cur = currency.current_currency.upcase
		first_amount = currency.current_amount
		second_cur = currency.wanted
		new_amount = first_amount.to_i * EUR_rates[wanted]
		puts new_amount
	break
	when second_cur == "KWR"
		first_cur = currency.current_currency.upcase
		first_amount = currency.current_amount
		second_cur = currency.wanted
		new_amount = first_amount.to_i * KWR_rates[wanted]
		puts new_amount
	break
	when second_cur == "JPY"
		first_cur = currency.current_currency.upcase
		first_amount = currency.current_amount
		second_cur = currency.wanted
		new_amount = first_amount.to_i * JPY_rates[wanted]
		puts new_amount
	break
	else
		puts "That is not a valid currency code"
	end
end




