Rails.application.routes.draw do
  get  'products/new' => 'products#new'
  post 'products' => 'products#create'

  get  'products' => 'products#index'
  get  'products/:id' => 'products#show', as: 'product'

  
end
