require './davinci-sinatra.rb'

get "/" do
  # TODO: Retrieve three values stored in the session and use them
  # to pre-fill form values in the view.
  @color  = session[:fav_color]
  @letter = session[:fav_letter]
  @number = session[:fav_number]

  halt erb(:index)
end

post "/" do
  # TODO: Transfer values of POST params to become local variables.
  # TODO: Save those local variables to the session so the values
  #       will last.
  color  = params["fav_color"]
  letter = params["fav_letter"]
  number = params["fav_number"]
  
  session[:fav_color]  = color
  session[:fav_letter] = letter
  session[:fav_number] = number

  redirect "/"
end

# TODO: Write handler for GET /logout that empties the session
get "/logout" do
  session.clear
  redirect "/"
end