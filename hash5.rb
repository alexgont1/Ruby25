@hh = {}

def add_person options
	puts 'Already exists!' if @hh[options[:name]]
	@hh[options[:name]] = options[:age]
end
	
def show_hash
	@hh.each_key do |key|
	puts "Name is #{key} and age is #{@hh[key]}"
	end
end

loop do
	print 'Enter name or press [Enter] to exit: '
	name = gets.strip.capitalize

	(show_hash; (puts 'Bye!!!'); break) if name == ''
		
	print 'Enter age: '
	age = gets.to_i

	options = {:name => name, :age => age}
	add_person options	
end