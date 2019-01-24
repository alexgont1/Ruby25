arr = []

puts "Who do you want to add to array? (name or [Enter] to exit)"
str = gets.strip.capitalize

while str != ""

	arr << str

	arr.length.times do |i|
		puts "#{i+1}. #{arr[i]}"
	end

	puts "Who do you want to add to array? (name or [Enter] to exit)"
	str = gets.strip.capitalize

end