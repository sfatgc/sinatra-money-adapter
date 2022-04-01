require 'sinatra'

get '/' do
  'Hello world!'
end

get '/health' do
  "I'm Okay!"
end