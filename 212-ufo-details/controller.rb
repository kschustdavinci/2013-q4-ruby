require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/ufos/:id" do
  id = params[:id]
  @ufo = UfoSighting.find(id)
  halt erb(:show)
end
