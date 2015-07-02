require 'pry'

class Currency

attr_reader :code, :amount, :wanted

def initialize code, amount, wanted
      @code = code
      @amount = amount
      @wanted = wanted
end
def current_currency
      @code = code
end

def current_amount
      @amount = amount
end

def wanted_currency
      @wanted = wanted
end
end