require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
	erb(:index)
  end

get '/secret' do
   'Hello Bradley'
end

get '/cat'do
	@name = ["Amigo", "Misty", "Almond"].sample	
	erb(:index)
end