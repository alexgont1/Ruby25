#read lines from password.txt
input = File.open("password.txt", "r")
output = File.open("password_2.txt", "w")

# print pswds with 6 symbols
# put this in file

while (line = input.gets)
	line.strip!
	if line.size == 6
		puts line
		output.write "#{line}\n"
	end
end

input.close
output.close