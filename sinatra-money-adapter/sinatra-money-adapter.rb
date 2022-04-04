require 'sinatra'
require 'json'

env_coefficient = ENV['SINATRA_MONEY_COEFFICIENT']

coefficient = env_coefficient ? env_coefficient.to_i : 2

get '/' do
  'Hello world!'
end

get '/health' do
  "I'm Okay!"
end

# Returns JSON in form: '{ "result": true|false }'
# Where "result" field value is set to tru or false
# randomly, according to coefficient
post '/' do
  {:result => (rand(100) % coefficient > 0)}.to_json
end
