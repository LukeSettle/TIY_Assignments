require_relative "Currency"
require_relative "Converter"
require "pry"

# puts "$4".tr("$","")
# str = "$4,000"

# puts str.scan(/\w/).join('')
# puts str.scan(/\W/).join('')


# Currency Objects
money = Currency.new  "$15.0"
money2 = Currency.new "$", 10

# puts money.current_amount
# puts money.current_code


# puts money2.current_amount
# puts money2.current_code


#CurrencyConverter Objects


obj = Converter.new [[:USD => 2.0], [:USD => 0.9]]
# this is getting close but needs to be a class method

converted_upon = obj.convert(money2)

# Converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD))