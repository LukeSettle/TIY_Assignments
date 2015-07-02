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

def <=> cur
      self.current_code <=> a.current_code
end