add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

hh = {111 => add_10, 222 => add_10, 333 => add_10, 
	  444 => add_20, 555 => add_20, 666 => sub_5, 
	  777 => sub_5, 888 => sub_5, 999 => sub_5}

print 'How much many to play? '
money = gets.to_i

loop do
	puts 'To play press [Enter]'
	gets
	combo = rand (100..999)
	money = hh[combo].call money if hh[combo]
	puts "Combo: #{combo}. Money = $#{money}"
end