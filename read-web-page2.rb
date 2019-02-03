require 'net/http'
require 'uri'

uri = URI.parse "https://www.google.com"
#to get some object
#response = Net::HTTP.post_form uri, :x => "ruby"

#to get body of web response
response = Net::HTTP.post_form(uri, :text => "ruby\n").body

puts response