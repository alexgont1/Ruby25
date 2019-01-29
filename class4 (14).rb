class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_reader :speed

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10_000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving #? for functions where return = true or false
		speed > 0
	end

end

models = ['Airbus-320', 'Boeing-777', 'IL-86']
planes = []

1000.times do
	model = models [rand(0..2)]
	plane = Airplane.new(model)
	planes << plane

	plane.fly if (rand(0..1)>0)
end

planes.each do |plane|
	puts "Model: #{plane.model}, Speed: #{plane.speed}, Alt: #{plane.altitude}"
	puts "It's moving: #{plane.moving}"
end