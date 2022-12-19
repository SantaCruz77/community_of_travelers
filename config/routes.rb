Rails.application.routes.draw do
  root :to => 'homes#top'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :edit, :update]

end
