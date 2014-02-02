require 'sinatra'
set :bind, '0.0.0.0'

people = []

get '/person/:name' do
  name_of_the_person = params[:name]
  people << name_of_the_person
  "ok #{name_of_the_person}, you're added to the list!"
end

get '/' do
  @people = people
  erb :index
end
