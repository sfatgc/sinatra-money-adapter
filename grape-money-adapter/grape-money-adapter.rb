require 'sinatra'
require 'json'

get '/' do
  'Hello world!'
end

get '/health' do
  "I'm Okay!"
end

post '/' do
  {:result => (rand(100) % 2 == 0)}.to_json
end