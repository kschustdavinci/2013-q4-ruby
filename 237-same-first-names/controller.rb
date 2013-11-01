require './davinci-sinatra.rb'

get "/" do
  halt erb(:enter_first)
end

post "/" do
  # TODO: If no one has that first name, show no_one.html.erb
  # TODO: If one person has that first name, show number.html.erb with
  #       their info.
  # TODO: If 2+ people have that first name, show choose.html.erb
  #       to let the user choose between the people with that first name.
  
  first_name = params["first_name"]
  people = Person.where(first_name: first_name)
  if people == Array.new
    halt erb(:no_one)
  elsif people.first == people.last
    @person = Person.find_by(first_name: first_name)
    halt erb(:number)
  else
    @people = people
    halt erb(:choose)
  end
end

get "/person/:first/:last" do
  # TODO: Show the info for the person with the first and last name
  #       specified in the route.
  
  first_name = params["first"]
  last_name  = params["last"]
  @person = Person.find_by(first_name: first_name, last_name: last_name)
  halt erb(:number)
end
