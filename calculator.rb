puts "Enter A"
a = gets.to_i

puts "Enter B"
b = gets.to_i

puts "What do you want to do? (+ - * /)"
d = gets.chomp

print "Result:  #{a} #{d} #{b} = "

if d == "+"
	print a + b
elsif d == "-"
	print a - b
elsif d == "*"
	print a * b
elsif b == 0
 	print "Error!!! Any number can't be devided by 0 !" 
else
	print a / b
end