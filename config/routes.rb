Rails.application.routes.draw do
  devise_for :students
  root 'home#index'
  get 'about', to: 'pages#about'
  resources :courses
  resources :students, only: %i[index show]
end
