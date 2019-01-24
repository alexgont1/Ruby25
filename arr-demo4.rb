arr = []

loop do
	arr2 = []

	print "Enter name or [Enter] to exit: "
	name = gets.strip.capitalize

	if name == ""
		break
	end

	print "Enter age: "
	age = gets.to_i
 
	arr2  << name
	arr2  << age
	arr << arr2
	
end

i = 0
puts "******************"
arr.each do |item|
	i+=1
	puts "#{i}. #{item[0]}, age = #{item[1]}"
end