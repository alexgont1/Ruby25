#count year income, data in file 'year-income.txt'
input = File.open("year-income.txt", "r")

#long solution:
=begin
aa = []
aa = IO.readlines(input, chomp: true)
input.close

income = 0
aa.each do |s|
	bb = []
	bb = s.split(',')
	income = income + bb[1].to_i
end
=end

#short solution
income = 0
while (line = input.gets)
	arr = line.split ","
	value = arr [1].to_i
	income = income + value
end
puts "Your income in a year = #{income}"

#income from 1 to 6 month
input = File.open("year-income.txt", "r")
income = 0
i=0
while (line = input.gets)
	arr = line.split ","
	bb = arr[1].to_i
	income = income + bb
	i = i + 1
	break if i == 6
end

puts "Your income in 6 months = #{income}"
input.close