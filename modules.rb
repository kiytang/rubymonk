#Modules allow you to crate groups of method that you can include or mix 
#into any number of classes.

module Warmup
	def push_ups
		"Phew, I need a break!"
	end
end

class Gym
	#to include module we use include method which take x1 parameter=the name of the module
	include Warmup 

	def preacher_curls
		"I;, building my biceps."
	end
end

class Dojo
	include Warmup

	def tai_kyo_kyu
		"Look at my stance!"	
	end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups



#Hierarchy
#module is the superclass of class
module Warmup
end

puts Warmup.class
puts Class.superclass
puts Module.superclass

# Module
# Module
# Object


#Module Practice
#note perimeter of both square and rectangle is calculated by summimg up all sides
#use inject to sum.

module Perimeter
	def perimeter
		sides.inject(0){ |sum, side| sum + side }
	end
end

class Rectangle
	include Perimeter
	
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def sides
		[@length, @breadth, @length, @breadth]
	end
end

class Square
	include Perimeter
	
	def initialize(side)
		@side = side
	end

	def sides
		[@side, @side, @side, @side]	
	end
end

puts Rectangle.new(2,3).perimeter
puts Rectangle.new(5,10).perimeter
puts Square.new(5).perimeter
puts Square.new(15).perimeter

















