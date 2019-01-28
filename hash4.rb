@hh = {}

def set_age name, age
	puts 'Already exists!' if @hh[name]
	@hh [name] = age
end
	
def show_hash
	@hh.each_key do |key|
	puts "Name is #{key} and age is #{@hh[key]}"
	end
end

loop do
	print 'Enter name or press [Enter] to exit: '
	name = gets.strip.capitalize
	if name == ''
		break
	end
	print 'Enter age: '
	age = gets.to_i

	set_age name, age
	show_hash
end