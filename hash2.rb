hh = {}

loop do

	print "Enter new name or [Enter] to exit: "
	name = gets.strip.capitalize

	if name ==""
		break
	end

	print "Enter phone number: "
	phone = gets.strip

	hh [name] = phone
end

puts "******************"
#puts hh 

hh.each do |key, value|
	puts "Name: #{key}, phone: #{value}"
end