require_relative "Currency"
require_relative "Converter"
require "pry"

Euro = "€"  
 Yen = "¥"  
 Dollar = "$"

# Currency Objects
money = Currency.new  "$15.0"
money2 = Currency.new "$100"

# Converter objects
obj = Converter.new 
#takes parameter of a Currency Object and the currency to change into
obj.convert money2, Yen