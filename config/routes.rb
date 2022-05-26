Rails.application.routes.draw do
  devise_for :users
  resources:books,only:[:show,:index,:edit,:create,:update,:destroy]
  resources:users,only:[:show,:edit,:index,:update]
  root to:"home#top"

  get 'home/about'=>"home#about",as:"about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
