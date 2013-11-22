require './davinci-sinatra.rb'

# Setup handler for index page at GET / route
get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

# TODO: Setup GET handler for form to fill out to create a new goat
get "/new_goat" do
  @goat = RacingGoat.new
  halt erb(:edit)
end

# TODO: Setup POST handler for when the new goat form is submitted.
post "/new_goat" do
  @goat = RacingGoat.new
  @goat.name               = params["name"]
  @goat.gender             = params["gender"]
  @goat.best_100m_time     = params["best_100m_time"]
  @goat.dietary_preference = params["dietary_preference"]
  
  if @goat.save
    flash[:notice] = "Record has been created"
    redirect "/"
  else
    halt erb(:edit)
  end
end

# TODO: Setup GET handler for add/edit goat details form
get "/goats/:id" do
  id = params[:id]
  @goat = RacingGoat.find_by(id: id)
  halt erb(:edit)
end

# TODO: Setup POST handler for submitted add/edit goat details form
post "/goats/:id" do
  @goat = RacingGoat.find(params[:id])
  
  if params["commit"] == "Delete"
    @goat.destroy
    flash[:notice] = "Record has been deleted"
    redirect "/"
  elsif params["commit"] == "Save"
    @goat.name               = params["name"]
    @goat.gender             = params["gender"]
    @goat.best_100m_time     = params["best_100m_time"]
    @goat.dietary_preference = params["dietary_preference"]
  
    if @goat.save
      flash[:notice] = "Record has been updated"
      redirect "/"
    else
      halt erb(:edit)
    end
  end
end