arr = [:rock, :scissors, :paper]

matrix = 
	[
		[:rock, :scissors, :You], #you, computer, winner
		[:rock, :paper, :Computer],
		[:scissors, :rock, :Computer],
		[:scissors, :paper, :You],
		[:paper, :rock, :You],
		[:paper, :scissors, :Computer],
	]

loop do
	winner = 1 # we played

	puts "(R)ock, (S)cissors or (P)aper?"
	usr = gets.strip.capitalize

	if usr == "R"
		usr = :rock
	elsif usr == "S"
		usr = :scissors
	elsif usr == "P"
		usr = :paper
	else
		puts "I didn't understand your answer, sorry."
		winner = 0 # we didn't play
	end
		
	comp = arr[rand(0..2)]

	matrix.each do |item|
		if item[0] == usr && item[1] == comp
			puts "You have #{usr}, Computer has #{comp}. #{item[2]} won!!!"
		elsif usr == comp
			puts "Computer has #{comp} and you have #{usr}. Nobody wins..."
			break
		end
	end

	if winner == 0
		puts "Try again."
	end
end