require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
	erb(:index)
  end

get '/secret' do
   'Hello Bradley'
end

get '/random_cat'do
	@name = ["Amigo", "Misty", "Almond"].sample	
	erb(:index)
end

post '/named-cat'do
	@name = params[:name]	
	erb(:index)
end

get '/form' do
	erb(:form)
end
end


	