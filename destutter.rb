unorganized = ["Hello", "goodbye", "Goodbye", 1, 2, 3, 3, 4, 4, 3, 3, 2, 1, 7, 7, 1]




def destutter(array)
	array.join.squeeze
end

puts destutter(unorganized)



def destutter2(array)
	array.uniq
end

puts destutter2(unorganized)