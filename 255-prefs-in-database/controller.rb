require './davinci-sinatra.rb'

get "/" do
  # TODO: If there is already a user_id saved in the session...
  # TODO: ...then use it to load the @user instance variable.
  # TODO: Otherwise just start a new empty User.
  if session[:userid] != nil
    @user = User.find_by(id: session[:userid])
  else
    @user = User.new
  end
  halt erb(:index)
end

post "/" do
  # TODO: If there is already a user_id saved in the session...
  # TODO: ...then use it to load the @user instance variable.
  # TODO: Otherwise just start a new empty User.
  if session[:userid] != nil
    @user = User.find_by(id: session[:userid])
  else
    @user = User.new
  end
  
  # TODO: Set the user's new preferences from POST params on the User
  # TODO: Then save the User object
  @user.color  = params["color"]
  @user.letter = params["letter"]
  @user.number = params["number"]
  @user.save!

  # TODO: Save that user ID to the session, in case we created a new
  #       one. (If we already had a user ID in the session, it doesn't
  #       hurt to overwrite it with the same value).
  session[:userid] = @user.id

  redirect "/"
end

# TODO: Write handler for GET /logout
get "/logout" do
  session.clear
  redirect "/"
end