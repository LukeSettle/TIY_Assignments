cat = []

car = "This is some text".split("")

last = car[0..-1]


while cat.length < car.length
	last.each do |x|
	cat.unshift(x)
end
end

print cat.join
