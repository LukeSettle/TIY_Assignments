require 'pry'

class Currency

attr_reader :code, :amount

def initialize code, amount, wanted
      @code = code
      @amount = amount
end
def current_currency
      @code = code
end

def current_amount
      @amount = amount
end

end