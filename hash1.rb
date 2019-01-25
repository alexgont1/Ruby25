hh = {'cat' => ['better than dog', 'says meo', 'purrs'], 
	'dog' => ['woof!', 'angry', 'not cat', 'big animal'], 
	'book' => ['to read', 'many pages']}

loop do

	print "Enter a word (cat/dog/book) or [Enter] to exit: "
	word = gets.strip

	break if word ==""

	puts
	print "#{word}. Descriptions amount: "
# long solution:
#	desc = 0
#	hh[word].each do
#		desc+=1
#	end
#	puts desc
	puts hh[word].size #short solution

	puts '----------------'
# long solution:
#	hh[word].each do |item|
#		puts "#{item}"
#	end
	puts hh[word] #short solution
	puts '----------------'

end