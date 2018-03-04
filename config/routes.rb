Rails.application.routes.draw do

  # STATIC_PAGES
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help' #displays html from views/help.html.erb
  get '/about', to: 'static_pages#about' #displays html from views/about.html.erb
  get '/contact', to: 'static_pages#contact' #displays html from views/contact.html.erb
  
  # USERS
  #get 'users/new'
  get '/signup', to: 'users#new'
  
  # RESOURCES
  resources :users
  
end
