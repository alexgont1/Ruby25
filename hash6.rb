@hh = {}

def add_person bb, options #options must be in the end of string!!!
	(puts 'Already exists! Won\'t be added.'; return) if @hh[options[:name]]
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

	(show_hash; break) if name == ''
		
	print 'Enter age: '
	age = gets.to_i

	bb = 0
	add_person bb, :name => name, :age => age	
end