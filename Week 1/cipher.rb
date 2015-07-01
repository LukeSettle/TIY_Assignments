def encode str
key = nil
	# get the amount cipher moves
	puts "what is the code key?"
	while key.nil? do
		begin
			key = Integer(gets.chomp)
		rescue ArgumentError
			key = 0
		end
	end


	code = ""
	str.each_char do |c|
		if c.ord >= 65 && c.ord <= 90
			c = (c.ord + key)
			if c > 90
				c = (c.ord - 26)
				code << c.chr
			else
				code << c.chr
			end
		elsif c.ord >= 97 && c.ord <= 122
			c = c.ord + key
			if c > 122
				c = (c.ord - 26)
				code << c.chr
			else
				code << c.chr
			end
		else
			code << c
		end
	end
	code
end


output = File.open("output.txt","w" )
input = File.new("input.txt")

input.each_line do |line|
	line = line.split(" ")
	line.delete_at(0)
	line = line.join(" ")
	line += "\n"
	output.write(encode(line))
end


