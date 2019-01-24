@arr = []

def add_items
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
		@arr << arr2
	
	end
end

def display_items
	i = 0
	puts "******************"
	@arr.each do |item|
		i+=1
		puts "#{i}. #{item[0]}, age = #{item[1]}"
	end
end

def remove_items
	print "What element do you want to delete? (number): "
	del_item = gets.to_i
	@arr.delete_at del_item-1

end

add_items
display_items

loop do
	remove_items
	display_items
end