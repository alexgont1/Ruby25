#initial table
@hh = {1 => ' ', 2 => ' ', 3 => ' ',
	   4 => ' ', 5 => ' ', 6 => ' ', 
	   7 => ' ', 8 => ' ', 9 => ' '}
@combinations = []#winning @combinations

def almost_combos
	#almost win/lose when have OO/XX. It can be:
	#left-to-right:    12, 23, 45, 56, 78, 89
	#top-to-bottom:    14, 47, 25, 58, 36, 69
	#diagonaly:        15, 59, 35, 57
	#with empty cells: 13, 46, 79, 17, 28, 39, 19, 37
	temp = []
	temp << @hh[1]+@hh[2]+@hh[3]#12' '3
	temp << @hh[2]+@hh[3]+@hh[1]#23' '1
	temp << @hh[4]+@hh[5]+@hh[6]#45' '6
	temp << @hh[5]+@hh[6]+@hh[4]#56' '4
	temp << @hh[7]+@hh[8]+@hh[9]#78' '9
	temp << @hh[8]+@hh[9]+@hh[7]#89' '7

	temp << @hh[1]+@hh[4]+@hh[7]#14' '7
	temp << @hh[4]+@hh[7]+@hh[1]#47' '1
	temp << @hh[2]+@hh[5]+@hh[8]#25' '8
	temp << @hh[5]+@hh[8]+@hh[2]#58' '2
	temp << @hh[3]+@hh[6]+@hh[9]#36' '9
	temp << @hh[9]+@hh[6]+@hh[3]#69' '3

	temp << @hh[1]+@hh[5]+@hh[9]#15' '9
	temp << @hh[9]+@hh[5]+@hh[1]#59' '1
	temp << @hh[3]+@hh[5]+@hh[7]#35' '7
	temp << @hh[5]+@hh[7]+@hh[3]#57' '3

	temp << @hh[1]+@hh[3]+@hh[2]#13' '2
	temp << @hh[4]+@hh[6]+@hh[5]#46' '5
	temp << @hh[7]+@hh[9]+@hh[8]#79' '8
	temp << @hh[1]+@hh[7]+@hh[4]#17' '4
	temp << @hh[2]+@hh[8]+@hh[5]#28' '5
	temp << @hh[3]+@hh[9]+@hh[6]#39' '6
	temp << @hh[1]+@hh[9]+@hh[5]#19' '5
	temp << @hh[3]+@hh[7]+@hh[5]#37' '5
	#hash: combo => best move
	bm = [3, 1, 6, 4, 9, 7, 		#solution for 12, 23, 45, 56, 78, 89
		  7, 1, 8, 2, 9, 3, 		#solution for 14, 47, 25, 58, 36, 69
		  9, 1,	7, 3,				#solution for 15, 59, 35, 57
		  2, 5, 8, 4, 5, 6, 5, 5]	#solution for 13, 46, 79, 17, 28, 39, 19, 37

	@move = 0 #trying to find winning move
	temp.each_with_index do |combo, i|
		@move = bm[i] if combo == 'OO '
	end

	if @move == 0 #trying to find blocking move if we don't have winning move
		temp.each_with_index do |combo, i|
			@move = bm[i] if combo == 'XX '
		end
	end
end

def calc_combos
	#winner @combinations:
	# (left to right) 123, 456, 789
	# (top to bottom) 147, 258, 369
	# (diagonals) 159, 357
	@combinations << @hh[1] + @hh[2] + @hh[3]
	@combinations << @hh[4] + @hh[5] + @hh[6]
	@combinations << @hh[7] + @hh[8] + @hh[9]
	@combinations << @hh[1] + @hh[4] + @hh[7]
	@combinations << @hh[2] + @hh[5] + @hh[8]
	@combinations << @hh[3] + @hh[6] + @hh[9]
	@combinations << @hh[1] + @hh[5] + @hh[9]
	@combinations << @hh[3] + @hh[5] + @hh[7]
end

def table_now
	puts 'Table now:'
	puts '-----'

	#show all cells and table borders
	i = 1
	while i < 10
		print '|' if i == 1 || i == 4 || i == 7
		
		if @hh[i] == ' '
			print i #show the number of cell if it's empty
			puts '|' if i == 3 || i == 6 || i == 9
		end

		if @hh[i] != ' '
			print @hh[i] #show X or 0 in cell if it's not empty
			puts '|' if i == 3 || i == 6 || i == 9
		end

		i = i + 1
	end
	puts  '-----'
end

puts 'You play using X'
table_now
winner = 0 #we don't have a winner yet

while winner == 0 && @hh.value?(' ')

	#player move
	if winner == 0
		print 'Enter the empty cell number: '
		mov = gets.to_i
		while mov < 1 || mov > 9 || @hh[mov] != ' '
			puts "Error! Try again..."
			mov = gets.to_i
		end
		
		@hh[mov] = 'X'
	end

	table_now
	calc_combos

	#player won?
	@combinations.each do |combo|
		if combo == 'XXX'
			puts 'You are the WINNER !!! Press [Enter] to exit...'
			winner = 1 # we have a winner
			gets
		end
	end

	#computer move
	if winner == 0 && @hh.value?(' ')#we don't have a winner and we have empty cell
		puts '**********Computer thinks***********'
		sleep 1
		
		#find all OO/XX combinations to win
		almost_combos
		cell = @move

		if @move == 0 #no XX, so any cell is good			
			cell = rand (1..9)
			while @hh[cell] != ' ' do
				cell = rand (1..9)
			end
		end

		@hh[cell] = 'O' #computer do the move
		table_now
		calc_combos

		#computer won?
		@combinations.each do |combo|
			if combo == 'OOO' && winner == 0
				puts 'Computer won this game. Press [Enter] to exit...'
				winner = 1 # we have a winner
				gets
			end
		end
	end
end

puts "It's draw. Press [Enter] to exit..."
gets