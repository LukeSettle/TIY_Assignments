require "pry"
class DifferentCurrencyCodeError < StandardError
end



class Converter
	attr_reader :hash, :current_code, :current_amount, :new_code, :new_unit, :new_amount

	def initialize hash = []
    	hash = {
	"$" => { "$" => 1.0, "€" => 0.90, "¥" => 123.16},

	"€" => {"$" => 1.11, "€" => 1.0, "¥" => 136.45},
	
	"¥" => {"$" => 0.0081, "€" => 0.0081, "¥" => 1.0}
	}
	@hash = hash
  	end
 
	def final
		@new_amount = new_amount
	end


  	def convert currency, wanted
  		if wanted == "$" || wanted == "€" || wanted == "¥"
  			@final_amount = (currency.current_amount.to_i * @hash[currency.current_code][wanted])
  					puts "your new amount is #{wanted}#{@final_amount.round(3)}"
  		else
  			puts "I don't know that currency...or how to raise a custom error...?¿?¿"
  		end
	end

end

