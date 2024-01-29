Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root 'todos#index'

  # get    'todos'              => 'todos#index'
  # get    'todos/new'          => 'todos#new'
  # post   'todos/create'       => 'todos#create'
  # delete 'todos/:id'  => "todos#destroy"
  
  resources :todos, only: [:index, :new, :create, :destroy]

end
