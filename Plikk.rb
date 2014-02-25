# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/o-mnie' do
  'Yeah!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

#pętla
get '/petla' do
	erb :petla
end

# lista
get '/lista' do
	tab = {:imie => "Bugs", :rasa => "krolik", :wiek => 4}
	haml :lista, :locals => {:tab => tab}
end
