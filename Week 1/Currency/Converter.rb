require "pry"

class Converter
	attr_reader :first, :new

	def initialize args
		args.each do |k, v|
			instance_variable_set("@#{k}", v) unless v.nil?
		end
	end


end