#to try use: rubular.com

#Find a word
s = 'The cat goes catatonic when you put in in catapult'
f = /cat\b/ # \b	= Any word boundary

puts "String = '#{s}'"

puts "Found: #{f.match(s)}"