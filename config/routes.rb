Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'sessions#create'
      get '/profile', to: 'users#profile'
    end
  end
end
