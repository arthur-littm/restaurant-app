require_relative "config/application.rb"
require_relative "models/restaurant.rb"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

post '/restaurants' do
  name =  params[:restaurant_name]
  category = params[:restaurant_category]
  Restaurant.create(name: name, category: category)
  redirect "/"
end

get '/restaurants/new' do
  erb :new
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

get '/about' do
  "<h2>This is a page about us</h2>"
end
