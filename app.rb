require 'sinatra'
require "make_todo"



get '/' do 
    @task = Tarea.all
    erb :index

end


post '/new' do

  @task = Task.create
end

# put '/' do
#   .. replace something ..
# end

# patch '/' do
#   .. modify something ..
# end

# delete '/' do
#   .. annihilate something ..
# end