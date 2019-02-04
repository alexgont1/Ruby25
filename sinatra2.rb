require 'sinatra'

get '/' do #root directory of web site
	erb :index #erb = template engine
	#more info https://github.com/sinatra/sinatra#erb-templates
end

#add new page with contact phone number, to see it: http://localhost:4567/contacts
get '/contacts' do
	'Phone: 204-720-6710'
end