Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#delete"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"

    get "/carted_products" => "carted_products#index"
  end
end
