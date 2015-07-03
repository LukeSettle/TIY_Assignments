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

# def <=> cur 
#       if self.current_code <=> cur.current_code
# end

def subtract cur
      if self.current_code == cur.current_code
           self = self.current_amount - cur.current_amount
      end
end


def not_equal cur
      if self.current_amount != cur.current_amount || self.current_code != cur.current_code
            self != cur
      end
end

end