Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :quizzes, only: [:create, :update, :destroy]
      end
      resources :quizzes do
        resources :questions, only: [:create]
      end
      resources :questions
      
      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
    end

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end