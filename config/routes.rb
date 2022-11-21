Rails.application.routes.draw do
  get 'endangered/index'
  get 'home/index'
  get 'endangered/data', to: 'endangered#data'
  post 'endangered/upload', to: 'endangered#upload'
  post 'endangered/destroy', to: 'endangered#destroy'
  resources :sharks do
	  resources :posts
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
