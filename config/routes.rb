Rails.application.routes.draw do
  devise_for :users
  resources :listings
  
  get 'pages/about'
	get 'pages/contact'
	get 'seller' => "listings#seller"

  root 'listings#index'

end

# Prefix Verb   URI Pattern                  Controller#Action
#      listings GET    /listings(.:format)          listings#index
#               POST   /listings(.:format)          listings#create
#   new_listing GET    /listings/new(.:format)      listings#new
#  edit_listing GET    /listings/:id/edit(.:format) listings#edit
#       listing GET    /listings/:id(.:format)      listings#show
#               PATCH  /listings/:id(.:format)      listings#update
#               PUT    /listings/:id(.:format)      listings#update
#               DELETE /listings/:id(.:format)      listings#destroy
#   pages_about GET    /pages/about(.:format)       pages#about
# pages_contact GET    /pages/contact(.:format)     pages#contact
#          root GET    /                            listings#index