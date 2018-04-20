Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #membuat router
  #index pages 'root' index mejadikan page pertama
  root 'posts#index'

  #router 'pages' => controller #about =>html
  get 'about' => 'pages#about'

  #resources
  resources :posts

end
