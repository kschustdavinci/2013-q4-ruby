App::Application.routes.draw do
  get  "/"     => "main#index"
  get  "/new_goat"  => "main#new_goat"
  post "new_goat"   => "main#new_goat_post"
  get  "/goats/:id" => "main#goat_details"
  post "/goats/:id" => "main#goat_details_post"
end
