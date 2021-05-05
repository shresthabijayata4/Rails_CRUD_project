Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  get "/newpost" => "posts#new"
  post "/postform" => "posts#create"
  get "/showpost" => "posts#show"
  post "/deleteform" => "posts#destroy"
  get "/unpublished" => "posts#unpublished"
  
  
  resources :posts
  resources :users
end
