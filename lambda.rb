
#lambda take parameters by surrounding them with pipes:
l = lambda do |string|
	if string == "try"
		return "There's no such thing"
	else
		return "Do or do not."
	end
end

puts l.call("try")
puts l.call(1)


# add a lambda to the folowing code which 
# increments any numbers passes to it by 1
Increment = lambda { |x| x + 1 }

puts Increment.call(1)
puts Increment.call(-1)
puts Increment.call(1000)