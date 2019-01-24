arr = %w[walt hank jr jessie lidia]

while arr.empty? == false

	arr.length.times do |i|
		puts "#{i+1}. #{arr[i]}"
	end

	puts "What number do you want to delete? [1..#{arr.length}]"

	n = gets.to_i
	arr.delete_at n-1

end