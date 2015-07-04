require_relative "Currency"
require_relative "Converter"
require "pry"

# puts "$4".tr("$","")
# str = "$4,000"

# puts str.scan(/\w/).join('')
# puts str.scan(/\W/).join('')

money = Currency.new  "$15.0"
money2 = Currency.new "$", 15.0

puts money.current_amount
puts money.current_code


puts money2.current_amount
puts money2.current_code