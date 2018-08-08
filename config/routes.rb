Rails.application.routes.draw do

  resources :company, only: [:show, :create, :update] do
    resources :survey, only: [:index, :show, :create, :update]
  end

  get '/survey', to: 'survey#form'

end
