require './davinci-sinatra.rb'

get "/" do
  halt erb(:login)
end

# TODO: Write a POST handler that either:
#   1. Shows the login page again with an error "Unknown username"
#   2. Or shows the login page again with the error "Wrong pin number"
#      (Bonus: pre-fill the username that the user entered last time)
#   3. Or redirects to /success

post "/" do
  @old_username = params["username"]
  pin    = params["pin_number"]
  user   = User.find_by(username: @old_username)
  if user == nil
    @error = "Unknown username"
    halt erb(:login)
  elsif pin != user.pin_number
    @error = "Wrong pin number"
    halt erb(:login)
  else
    redirect "/success"
  end
end

get "/success" do
  halt erb(:success)
end
