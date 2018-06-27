require 'sinatra'

get '/' do
  text = gets.chomp
  text
end

get '/secret' do
  'a new message'
end

get '/route2' do
  'The time now is: ' + Time.now.to_s
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/random-cat' do
  @name = %w[Amigo Oscar Viking].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
