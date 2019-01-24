arr = %w[rock scissors paper]

loop do
	winner = 0

	puts "Choose: rock, scissors or paper?"
	usr = gets.strip

	comp = arr[rand(0..2)]

	if usr == "rock" && comp == "scissors"
		winner = "You"
	end

	if usr == "rock" && comp == "paper"
		winner = "Computer"
	end

	if usr == "scissors" && comp == "rock"
		winner = "Computer"
	end

	if usr == "scissors" && comp == "paper"
		winner = "You"
	end

	if usr == "paper" && comp == "rock"
		winner = "You"
	end

	if usr == "paper" && comp == "scissors"
		winner = "Computer"
	end

	if winner == 0
		puts "Computer = #{comp}, you = #{usr}. Nobody wins..."
	else
		puts "Computer = #{comp}, you = #{usr}. #{winner} won!!!"
	end

end