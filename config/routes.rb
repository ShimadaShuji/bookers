Rails.application.routes.draw do


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
