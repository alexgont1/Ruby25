hh = {111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => -66, 
	777 => -77, 888 => -88, 999 => -99}

print "How much money do you have for gambling? "
money = gets.to_i

print "How much times do you want to play? "
times = gets.to_i

played = 0
money_change = 0
while times-played > 0 && money > 0
	played = played + 1

	print "Game ##{played}. "
	combination = rand (100..999)
	print "Combination: #{combination}. Money: $"
#long solution
#	hh.each_key do |key|
#		if combination == key
#			money = money + hh[key]
#			money_change = 1
#		end
#	end

#short solution:
	if hh [combination]
		money = money + hh[combination]
		money_change = 1
	end
	
	if money_change > 0
		puts "#{money} !!!!!!!!!!!!!!!!!!"
	else
		puts "#{money}"
	end
	money_change = 0
	puts "For next game press [Enter]"
	gets

end