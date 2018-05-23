require 'sinatra'
require 'make_todo'



get '/' do 
    @tareas = Tarea.all
    erb :index

end


get '/tarea/new' do
 
  erb :new

end


post '/tarea/new' do
 @tarea = Tarea.create(params[:title])
  redirect '/'
end

get '/done' do
  erb :done
end



post '/done' do 
Tarea.update(params[:id])
redirect '/'
end 


get '/hecha' do
    @tareas = Tarea.all
    erb :hecha
end 



delete '/tarea/:id' do
  @tarea = Tarea.destroy(params[:id])
  redirect "/"
end
