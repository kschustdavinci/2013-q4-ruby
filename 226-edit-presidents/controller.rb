require './davinci-sinatra.rb'

get "/" do
  @presidents = President.order(:id)
  halt erb(:index)
end

get "/new_president" do
  @president = President.new
  halt erb(:edit)
end

post "/new_president" do
  @president = President.new
  @president.name              = params["name"]
  @president.term_number       = params["term_no"]
  @president.biography         = params["bio"]
  @president.ended_term_early  = params["early_out"]
  @president.party             = params["party"]
  @president.former_occupation = params["former_occupation"]
  @president.birth_state_id    = params["birth_state_id"]
  @president.save!
  redirect "/"
end

get "/presidents/:id" do
  id = params["id"]
  @president = President.find(id)
  halt erb(:edit)
end

post "/presidents/:id" do
  id = params["id"]
  @president = President.find(id)
  @president.name              = params["name"]
  @president.term_number       = params["term_no"]
  @president.biography         = params["bio"]
  @president.ended_term_early  = params["early_out"]
  @president.party             = params["party"]
  @president.former_occupation = params["former_occupation"]
  @president.birth_state_id    = params["birth_state_id"]
  @president.save!
  redirect "/"
end