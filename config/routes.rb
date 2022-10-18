Rails.application.routes.draw do
  devise_for :students
  root 'home#index'
  get 'about', to: 'pages#about'
  resources :courses
end
