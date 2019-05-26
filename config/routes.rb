Rails.application.routes.draw do
  get '/' => 'books#top'
  get 'index'  => 'books#index', as: "index"
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'show'
  get 'books/:id/edit' => 'books#edit', as: 'edit'
  patch 'books.:id' => 'books#update'
  delete 'books/:id' => 'books#destroy', as: 'destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
