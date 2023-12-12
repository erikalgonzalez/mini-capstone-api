Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products", controller: "products", action: "index"
  get "/first_product", controller: "products", action: "show"
  get "/second_product", controller: "products", action: "show"
  get "/third_product", controller: "products", action: "show"
end
