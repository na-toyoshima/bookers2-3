Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:new, :create, :show, :index, :destroy, :edit, :update] do
    resource :book_comments, only:[:create, :destroy]
  end
  resources :users, only:[:show, :index, :edit, :update]
end
