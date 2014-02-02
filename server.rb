require 'sinatra'
set :bind, '0.0.0.0'

people = []

get '/person/:name' do
  people << params[:name]
  "ok, you're added to the list!"
end

get '/' do
  @people = people
  erb :index
end
