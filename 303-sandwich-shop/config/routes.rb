App::Application.routes.draw do
  get  "/"            => "main#order_form"
  post "/"            => "main#place_order"
  get  "/list_orders" => "main#list_orders"
  get  "/thank_you"   => "main#thank_you"
end
