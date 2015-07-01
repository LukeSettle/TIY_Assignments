# def sum_upto(n)
# 	return 1 if n == 1
# 	sum_upto(n-1) + n
# end

# puts sum_upto(2)



# def append( ary , n)

# end
# append [], 2



# def fibnum(n)
# 	a = 0 
# 	b = 1
# 	c = 0
# 	sum = 0
# 	while c < 4000000"
# 		c = a + b
# 		if c % 2 == 0 
# 			 sum = sum + c
# 		end
# 		puts c

# 		a = b 
# 		b = c
# 	end
# 	puts "The sum of the even number is #{sum}"
# end
# fibnum(5)


def fibnum(n)
	return  0 if n == 0
	return 1 if n == 1
	fibnum(n - 1) + fibnum(n - 2)
end


puts fibnum(1)





