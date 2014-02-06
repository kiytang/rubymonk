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
