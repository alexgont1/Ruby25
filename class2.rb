class Book

	def initialize #work only 1 time when we create new instance
		@hh = {} #accesible only in this class
	end

	#to get access to @hh:
	def aaa
		@hh
	end

	#long solution:
	#def last_person
	#	@last_person
	#end
	#####short solution
	attr_reader :last_person

	def add_person options #options must be in the end of string!!!
		(puts 'Already exists! Won\'t be added.'; return) if @hh[options[:name]]
		@hh[options[:name]] = options[:age]
		@last_person = options[:name]
	end
		
	def show_all
		@hh.each_key do |key|
			puts "Name is #{key} and age is #{@hh[key]}"
		end
	end

end

b = Book.new

loop do
	print 'Enter name or press [Enter] to exit: '
	name = gets.strip.capitalize

	(b.show_all; break) if name == ''
		
	print 'Enter age: '
	age = gets.to_i

	b.add_person :name => name, :age => age	
end

puts "Last person: #{b.last_person}"