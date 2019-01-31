class Country
	attr_reader :cname, :airports

	def initialize cname
		@cname = cname
		@airports = []
	end

	def add_airport airport
		@airports << airport
	end
end

class Airport
	attr_reader :name, :planes

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

countries = []
airports = []

country1 = Country.new 'USA'
country2 = Country.new 'Canada'

countries << country1 << country2

a1 = Airport.new "Airport#{rand(1..9)}"
a2 = Airport.new "Airport#{rand(1..9)}"

country1.add_airport a1
country1.add_airport a2

country2.add_airport a1
country2.add_airport a2

airports << a1 << a2

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

countries.each do |c|
	puts "*****************Country name: #{c.cname}**************"

	airports.each do |airport|
	#show airport name
	puts "Airport name: #{airport.name}."

		#show planes in this airport
		airport.planes.each do |plane|
			puts "*****Plane: #{plane.model}"
		end
		
	end
end