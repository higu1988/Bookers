Rails.application.routes.draw do
  root :to => 'books#index'
  post 'books' => 'books#create'
  get '/books' => 'books#books'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
