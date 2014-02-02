require 'sinatra'
set :bind, '0.0.0.0'

people = []

get '/person/:name' do
  @name_of_the_person = params[:name]
  people << @name_of_the_person
  erb :added
end


get '/' do
  @people = people
  erb :index
end


