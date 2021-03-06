Rails.application.routes.draw do
  resources :cpds
  resources :glossaries
  devise_for :users
  #When the website is loaded the application will execute the code which will run the code that is stored within the index action of the posts.
  root to: 'posts#index'

  resources :blog, to: 'posts'
  
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
