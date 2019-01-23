#puts "How old are you?"
#y = gets.to_i

#puts "Do you want to play? (Y/N)"
#a = gets.strip.capitalize

puts "How many times do you want to play?"
t = gets.to_i

puts "How much money to play?"
money = gets.to_i

y = 18; a = "Y"
if y>=18 && a == "Y"
	puts "OK, let's play!"

	1.upto(t) do |i|

		money = money - 1
		mmm = money

		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)

		#animation
		j = 0
		while j < 5  do
		   print("\t\t\\\\\\"); sleep 0.1; print("\r\r\r")

		   print("\t\t|||" ); sleep 0.1; print("\r\r\r" )

		   print("\t\t///" ); sleep 0.1; print("\r\r\r" )

		   print("\t\t---" ); sleep 0.1; print("\r\r\r" )

		   j +=1
		end
		print "\t\t#{x}#{y}#{z}\n"

		puts "     Game ##{i}, your money = $ #{money}"

		if x == 0 && y == 0 && z == 0
			puts "You lost all your money!!!"
			money = 0
		end

		#111
		if x == 1 && y == 1 && z == 1
			puts "You won $ 10 !"
			money = money + 10
		end

		#222
		if x == 2 && y == 2 && z == 2
			puts "You won $ 20 !"
			money = money + 20
		end

		#333
		if x == 3 && y == 3 && z == 3
			puts "You won $ 30 !"
			money = money + 30
		end

		#444
		if x == 4 && y == 4 && z == 4
			puts "You won $ 40 !"
			money = money + 40
		end

		#555
		if x == 5 && y == 5 && z == 5
			puts "You won $ 50 !"
			money = money + 50
		end

		#666
		if x == 6 && y == 6 && z == 6
			puts "You lost 50% of your money!!!"
			money = money / 2
		end

		#777
		if x == 7 && y == 7 && z == 7
			puts "You lost $ 70 !"
			money = money - 70
		end

		#888
		if x == 8 && y == 8 && z == 8
			puts "You lost $ 88 !"
			money = money - 88
		end

		#999
		if x == 9 && y == 9 && z == 9
			puts "You lost $ 90 !"
			money = money - 99
		end

		#123
		if x == 1 && y == 2 && z == 3
			puts "You lost $ 123 !"
			money = money - 123
		end

		if mmm != money 
			sleep 1
		end

		if money < 1
			puts "You don't have any money to play! Bye!"
			exit
		end

		print "To play more press [Enter]..."
		gets

	end
end