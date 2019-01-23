def get_command

	x = rand (0..3)

	if x == 0
		:left #it's Global symbol
	elsif x == 1
		:right
	elsif x == 2
		:up
	else
		:down
	end
end

cmd = get_command

puts "Command: #{cmd}"

puts "Robot goes #{cmd}"