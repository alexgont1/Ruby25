puts "Number (1..100) ?"
x = rand (1..100)

n = 0 # number to enter
g = 1 # games
t = 10 # tries

while n != x
	n = gets.to_i
	g = g + 1

	if (t-g) < 0
		break
	end

	if n < x
		print "Game ##{g}, #{t-g} tries left. No, more. Try again: "
	elsif n > x
		print "Game ##{g}, #{t-g} tries left. No, less. Try again: "
	end
	
end

if (t-g) < 0
	print "------------------You loose. It was #{x}.---------------------"
else
	print "++++++++++++++++++Yes!!! It's #{x}.+++++++++++++++++++++++"
end