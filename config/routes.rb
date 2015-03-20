Rails.application.routes.draw do

  #HTTP Verbs
  #GET, POST, PATCH, DELETE

  #CREATE
  get  'products/new' => 'products#new' #showing the new form
  post 'products' => 'products#create'  #creating the new product

  #SHOW
  get  'products' => 'products#index'
  get  'products/:id' => 'products#show', as: 'product'

  #UPDATE
  get 'products/:id/edit' => 'products#edit', as: 'edit_product'
  patch 'products/:id' => 'products#update'

end
