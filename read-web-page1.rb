#https://ruby-doc.org/stdlib-2.4.1/libdoc/net/http/rdoc/Net/HTTP.html
#get page var.1
#require 'net/http'
#page = Net::HTTP.get('krdprog.ru', '/index.html')
#puts page

#get page var.2
require 'net/http'
require 'uri'
uri = URI.parse "http://krdprog.ru/index.html"
response = Net::HTTP.get uri
puts response