Rails.application.routes.draw do
  get 'static_pages/home' #displays html from views/home.html.erb
  get 'static_pages/help' #displays html from views/help.html.erb
  get 'static_pages/about' #displays html from views/about.html.erb
  get 'static_pages/contact' #displays html from views/contact.html.erb
  root 'static_pages#home'
end
