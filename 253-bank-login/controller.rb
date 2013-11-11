require './davinci-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  # There's no error to show; not necessary, just being clear...
  @error = nil

  halt erb(:login)
end

post "/login" do
  # TODO: Take the username and password that the user entered,
  # and either log them in, saving their user ID to the session,
  # and redirect to /accounts, or set an error message in @error
  # and re-render login.html.erb.
  username = params["username"]
  password = params["password"]
  user = User.find_by(username: username)
  
  if user != nil
    if 
      user.password != password
      @error = "Incorrect password"
      halt erb(:login)
    else
        session[:user_id] = user.id
        redirect "/accounts"
    end
  else
    @error = "Username is unknown"
    halt erb(:login)
  end  
end

get "/accounts" do
  if session[:user_id] == nil
    redirect "/login"
  else
    @user = User.find(session[:user_id])
    # TODO: Load the user based on the id saved to the session

    halt erb(:accounts)
  end
end

get "/location" do
  if session[:user_id] == nil
    redirect "/login"
  else
    @user = User.find(session[:user_id])
    # TODO: Load the user based on the id saved to the session

    halt erb(:location)
  end
end

get "/rates" do
  if session[:user_id] == nil
    redirect "/login"
  else
    @user = User.find(session[:user_id])
    # TODO: Load the user based on the id saved to the session

    halt erb(:rates)
  end
end

# TODO: Write handler for GET /logout that logs out the user
get "/logout" do
  session.clear
  redirect "/login"
end