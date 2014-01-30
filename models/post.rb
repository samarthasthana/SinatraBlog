class Post
include MongoMapper::Document

key :topic, String
key :started, Time
key :name, String
key :content, String
end