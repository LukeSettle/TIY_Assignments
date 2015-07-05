require "pry"

class Converter
	attr_reader :hash, :current_code, :current_amount, :new_code, :new_unit, :new_amount

	def initialize hash
    	@hash = hash
  	end
 
	def final
		@new_amount = new_amount
	end


  	def convert currency
  		hashes = self.hash
		@first = hashes[0][0]
		@second = hashes[1][0]

		@first.each do |k, v|
			@current_code = k
			@current_convert_amount = v
		end
		@second.each do |k, v| 
			@new_code = k
			@new_convert_unit = v
		end
		

		@current_amount = currency.current_amount.to_i


		#should be able to do this
		puts "The new amount is #@new_code#{(@current_amount * @new_convert_unit)}"
	end

end

