#myapp.rb

require 'sinatra'
require 'mongo_mapper'
require 'rubygems'

configure do
MongoMapper.database = 'test'
end 
 
 class Post
include MongoMapper::Document

key :topic, String
key :name, String
key :content, String
end

get '/' do
params[:posts]=Post.find_by_name("Sagar")
@test=Post.all()
#Post.find_by_name("Sam")
erb :index
end

get '/add/?' do
erb :new
end

get '/edit/?' do
erb :edit
end

get '/delete/?' do
erb :delete
end


