#find file from disk
require 'find'

print 'File name? '
ff = gets.chomp

aa='' #path to file
i=0 #file number
Find.find('c:') do |path|
	aa = path if path.include? ff
	i+=1
	break if (aa !='' || i>20000)
end
if i < 20001
	print "*************  File number: #{i}, file path: #{aa}"
else
	print '-----------  nothing .....   :('
end