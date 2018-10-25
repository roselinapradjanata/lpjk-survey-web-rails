Rails.application.routes.draw do

  resources :company, only: [:show, :create, :update] do
    resources :survey, only: [:index, :show, :create, :update]
  end

  get '/survey', to: 'survey#form'
  get '/surveys', to: 'admin#show_surveys'

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
end
