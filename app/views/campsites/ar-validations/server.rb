require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './app/models/recipe'
require './app/models/comment'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  @recipes = Recipe.all
  erb :index
end

get '/recipes/:id' do
  @recipe_name = params[:id]
  @recipe = Recipe.where("id = ?", params[:id]).pluck(:title, :servings)
  @comment = Comment.where("recipe_id = ?", params[:id]).pluck(:body)
  erb :show
end
