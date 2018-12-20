housePrice = 500_000
mortgagePeriod = 30 #years
debt = housePrice

mortgagePeriod.times do |i|
  debt = debt - housePrice / mortgagePeriod
  puts "Year #{i + 1}, you paid: #{housePrice / mortgagePeriod} and owe #{debt}" if i<mortgagePeriod-1
  puts "Last year, you owe #{debt}" if i==mortgagePeriod-1
  gets
end