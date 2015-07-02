require 'pry'

class Currency

attr_reader :code, :amount

def initialize code, amount, wanted
      @code = code
      @amount = amount
end
def current_code
      @code = code
end

def current_amount
      @amount = amount
end

def same cur cur2
      if cur.current_code == cur2.current_code && cur.current_amount == cur2.current_amount
            cur = cur2
      end
end