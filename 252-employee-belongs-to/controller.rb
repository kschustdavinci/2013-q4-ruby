require './davinci-sinatra.rb'

# TODO: Write handler for GET /
get "/" do
  @employees = Employee.order(:id)
  @new_employee = Employee.new
  halt erb(:index)
end

# TODO: Write handler for POST /
post "/" do
  @new_employee = Employee.new
  @new_employee.first_name = params["first_name"]
  @new_employee.last_name  = params["last_name"]
  @new_employee.company_id = params["company"]
  if @new_employee.save
    redirect "/"
  else
    @employees = Employee.order(:id)
    halt erb(:index)
  end
end
