require 'pry'

class Currency

attr_reader :code, :amount

def initialize code, amount
      @code = code
      @amount = amount
end
def current_code
      @code = code
end

def current_amount
      @amount = amount
end
#probably does nothing and makes no sense
def <=> cur 
      if (self.current_code <=> cur.current_code) == 1
            self > cur # I think...
      elsif (self.current_code <=> cur.current_code) == -1
            self < cur # maybe...
      else
            self == cur
      end

      if (self.current_amount <=> cur.current_amount) == 0
            self == cur
      else
            self != cur
      end
end

def subtract cur
      if self.current_code == cur.current_code
           subtracted_currency = self.current_amount - cur.current_amount
      else
            puts "Different currency code error!"
      end
end

def add cur
      if self.current_code == cur.current_code
           added_currency = cur.current_amount + self.current_amount
      else
            puts "Different currency code error!"
      end
end

def multiply num
      if num.class == Fixnum
            new_code = self.current_code
            new_amount = self.current_amount * num
          new_currency = Currency.new new_code, new_amount
      end
end



def not_equal cur
      if self.current_amount != cur.current_amount || self.current_code != cur.current_code
            self != cur
      else
            self == cur
      end
end

end