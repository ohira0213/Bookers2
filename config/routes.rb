Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/about' => 'homes#about', as: 'about'
<<<<<<< HEAD
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy, :new]
=======
  
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy, :new] do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
>>>>>>> origin/main
  resources :users, only: [:index, :show, :edit, :update]
end