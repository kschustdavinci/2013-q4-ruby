require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/contact-form" do
  halt erb(:contact_form)
end

get "/form-in-table" do
  halt erb(:form_in_table)
end

get "/page-headers" do
  halt erb(:headers)
end

get "/inline" do
  halt erb(:inline)
end

get "/NestedLists" do
  halt erb(:nested_lists)
end
