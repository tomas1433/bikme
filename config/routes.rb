Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  resources :users
  resources :listings

  root to: 'pages#home'

  get "/contact" => "pages#contact"
  get 'seller' => "listings#seller"

  root 'listings#index'


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
