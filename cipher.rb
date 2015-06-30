input = File.new("input.txt")

content = input.read

def encode str
	code = ""
	str.each_char do |c|
		if c.ord >= 65 && c.ord <= 90
			c = (c.ord + 13)
			if c > 90
				c = (c.ord - 26) 
				code << c.chr
			end
		elsif c.ord >= 97 && c.ord <= 122
			c = c.ord + 13
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



output = File.open("output.txt", "w")
output.write encode(content)
output.close




