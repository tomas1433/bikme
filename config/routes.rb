Rails.application.routes.draw do
  root to: 'pages#home'

  get "/contact" => "pages#contact"
  
  resources :listings
  #get "/listings" => "listings#index"
  #get "/listings/:id" => "listings#show"

  #get "/listings/new" => "listings#new"
  #post "/listings" => "listings#create"

  #update a listing
  #get "/listings/:id/edit" => "listings#edit"
  #patch "/products/:id" => "listings#update"

  #delete listing
  #delete "/listings/:id" => "listings#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
