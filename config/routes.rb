Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help' #displays html from views/help.html.erb
  get '/about', to: 'static_pages#about' #displays html from views/about.html.erb
  get '/contact', to: 'static_pages#contact' #displays html from views/contact.html.erb
  #compare to old: get 'static_pages/home', etc., which are basically the same but require the longer '/static_pages/' in the URL name.
  get '/signup', to: 'users#new'
end
