require_relative "Currency"
require "pry"



dollar = Currency.new "usd", 100

euro = Currency.new "usd", 5

puts dollar.add euro
