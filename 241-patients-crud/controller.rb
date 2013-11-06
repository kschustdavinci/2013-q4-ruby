require './davinci-sinatra.rb'

# TODO: write handler for GET / requests
get "/" do
  @patients = Patient.order(:id)
  halt erb(:index)
end

# TODO: write handler for GET /patients/3, /patients/5, etc. requests
get "/patients/:id" do
  id = params["id"]
  @patient = Patient.find(id)
  halt erb(:edit_or_new)
end

# TODO: write handler for POST /patients/3, /patients/5, etc. requests
post "/patients/:id" do
  id                 = params["id"]
  button             = params["commit"]
  @patient = Patient.find(id)
  if button == "Update"
    @patient.systolic  = params["systolic"]
    @patient.diastolic = params["diastolic"]
    if @patient.save
      redirect "/"
    else
      halt erb(:edit_or_new)
    end
  elsif button == "Delete"
    @patient.destroy
    redirect "/"
  end
end

# TODO: write handler for GET /new_patient requests
get "/new_patient" do
  @patient = Patient.new
  halt erb(:edit_or_new)
end

# TODO: write handler for POST /new_patient requests
post "/new_patient" do
  @patient = Patient.new
  @patient.systolic  = params["systolic"]
  @patient.diastolic = params["diastolic"]
  if @patient.save
    redirect "/"
  else
    halt erb(:edit_or_new)
  end
end