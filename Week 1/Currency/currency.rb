require 'pry'

class Currency

attr_reader :code, :amount

def initialize code, amount = nil
      @code = code
      @amount = amount unless amount.nil? == true
end
def current_code
      @code = code
end

def current_amount
      @amount = amount
end

def param_check
      if @amount.nil? == true
            @amount = @code.scan(/[a-zA-Z0-9_,.]/).join("")
            @code = @code.tr(".", "").scan(/\W/).join("")
      end
end


# Just returns true or false I think...
def <=> cur 
      if (self.current_code <=> cur.current_code) != 0
            nil
      else
            self.current_amount <=> cur.current_amount
      end
end

def - cur
      if self.current_code == cur.current_code
           subtracted_currency = self.current_amount - cur.current_amount
      else
            puts "Different currency code error!"
      end
end

def + cur
      if self.current_code == cur.current_code
           added_currency = cur.current_amount + self.current_amount
      else
            puts "Different currency code error!"
      end
end

def multiply num
      if num.class == Fixnum || num.class == Float
            new_code = self.current_code
            new_amount = self.current_amount * num
          new_currency = Currency.new new_code, new_amount
      end
end


# This does not make sense, but I don't know what I am even using it for..
def not_equal cur
      if self.current_amount != cur.current_amount || self.current_code != cur.current_code
            self != cur
      else
            self == cur
      end
end

end