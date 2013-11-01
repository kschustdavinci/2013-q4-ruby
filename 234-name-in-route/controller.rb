require './davinci-sinatra.rb'

get "/" do
  @entries = EncyclopediaEntry.order(:word)
  halt erb(:index)
end

get "/:id" do
  bird = params[:id]
  @entry = EncyclopediaEntry.find_by(word: bird)
  halt erb(:show)
end
