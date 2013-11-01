require './davinci-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  if params["name_of_element"] != ""
    element_name = params["name_of_element"]
    @answer9  = Element.find_by(name: element_name).number
  end
  if params["number_of_element"] != ""
    element_number = params["number_of_element"]
    @answer10 = Element.find_by(number: element_number).name
  end
  halt erb(:answer_to_9_or_10)
end
