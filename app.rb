require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader'
require 'haml'

get '/hi' do
  "Hello World!"
end

get '/' do
	"Strona główna"
end 

get '/elo' do
	"elo"
end

get '/cats' do
	cats = "List of my cats."
	erb :cats, :locals => {:cats => cats}
end

get '/dogs' do
	dogs = "List of my dogs."
	haml :dogs, :locals => {:dogs => dogs}
end

get '/sth' do
	@sth = ["kot", "pies"]
	# @sth = Hash.new
	#@sth = [:x => "ola", :y => 2, :z => 5]
	haml :sth
end

get '/sth-erb' do
	@sth = ["kot", "pies"]
	erb :sth_erb
end

get '/books_erb' do
	@books=Array.new(15)
    15.times do |i|
      @books[i]= "ksiazka #{i}"
    end
    erb :books_erb
end

get '/books_haml' do
	@bookss=Array.new(10)
	10.times do |i|
		@bookss[i]="Książka nr #{i}"
	end
	haml :books_haml
end