class Airport
	attr_reader :name
	attr_reader :planes

	def initialize (name)
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

airports = []

a1 = Airport.new ('Winni')
a2 = Airport.new ('Vanc')

airports << a1
airports << a2

plane1 = Plane.new 'Plane1'
plane2 = Plane.new 'Plane2'
plane3 = Plane.new 'Plane3'

plane4 = Plane.new 'Plane4'
plane5 = Plane.new 'Plane5'
plane6 = Plane.new 'Plane6'

a1.add_plane plane1
a1.add_plane plane2
a1.add_plane plane3

a2.add_plane plane4
a2.add_plane plane5
a2.add_plane plane6

airports.each do |airport|
#show airport name
puts "Airport name: #{airport.name}."	
	#show planes in this airport
	airport.planes.each do |plane|
		puts "*****Plane: #{plane.model}"
	end
	
end