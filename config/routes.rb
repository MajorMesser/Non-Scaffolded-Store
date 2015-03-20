Rails.application.routes.draw do

  #HTTP Verbs
  #GET, POST, PATCH, DELETE

  root to: 'products#index'

  #CREATE
  get  'products/new' => 'products#new', as: 'new_product' #showing the new form
  post 'products' => 'products#create'  #creating the new product

  #SHOW
  get  'products' => 'products#index'
  get  'products/:id' => 'products#show', as: 'product', id: /\d+/

  #UPDATE
  get 'products/:id/edit' => 'products#edit', as: 'edit_product', id: /\d+/
  patch 'products/:id' => 'products#update', id: /\d+/

end
