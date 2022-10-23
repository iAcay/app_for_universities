Rails.application.routes.draw do
  devise_for :students
  root 'home#index'
  get 'about', to: 'pages#about'
  resources :courses do
    get :search, on: :collection
  end
  resources :students, only: %i[index show]
  resources :student_courses, only: %i[index create destroy]
end
