require './davinci-sinatra.rb'

get "/" do
  @stations = Station.order(:id)
  halt erb(:index)
end

get "/existing" do
  @stations = Station.where(status: "existing")
  halt erb(:index)
end

get "/private" do
  @stations = Station.where(property_type: "private")
  halt erb(:index)
end

get "/zip/:zip_code" do
  zip = params["zip_code"]
  @stations = Station.where(zip_code: zip)
  halt erb(:index)
end

get "/street/Broadway" do
  street = params["substring"]
  @stations = Station.where("station_name like ?", street)
  halt erb(:index)
end

get "/street/17th" do
  street = params["substring"]
  @stations = Station.where("station_name like ?", street)
  halt erb(:index)
end
