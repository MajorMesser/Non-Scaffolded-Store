Rails.application.routes.draw do
  get  'products/new' => 'products#new' #showing the new form
  post 'products' => 'products#create'  #creating the new product

  get  'products' => 'products#index'
  get  'products/:id' => 'products#show', as: 'product'

  
end
