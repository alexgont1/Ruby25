say_hi = lambda { puts "Hi!" }
say_bye = lambda { puts "Bye!" }

week = [ say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye ]

week.each do |f|
	f.call
end

x = lambda { |a| puts "#{a}" }
x.call 55

y = lambda { |a, b| puts "#{a+b}" }
y.call 3, 22

sub_10 = lambda do |x|
	return x - 10
end
a = sub_10.call 1000
puts a

sub_5 = lambda { |x| return x - 5 }