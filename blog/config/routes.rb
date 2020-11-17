Rails.application.routes.draw do
  get 'articles/index'

  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"

  get 'articles/:id', to: 'articles#show'
  get 'articles/:id/edit', to: 'articles#edit'
  put "articles/:id" => "articles#update"
  patch 'articles/:id', to: 'articles#update', as: :article
  delete 'articles/:id', to: 'articles#destroy'

  root to: 'articles#index'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
