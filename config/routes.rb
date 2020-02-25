Rails.application.routes.draw do
  devise_for :users
  #When the website is loaded the application will execute the code which will run the code that is stored within the index action of the posts.
  root to: 'posts#index'

  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  resources :blog, to: 'posts'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
