Rails.application.routes.draw do
  #root 'static_pages#home'
  #Rather than doing ^, can also do:
  root_path -> ' '
  root_url -> 'https://rocky-depths-47706.herokuapp.com'
  get 'static_pages/home' #displays html from views/home.html.erb
  get 'static_pages/help' #displays html from views/help.html.erb
  get 'static_pages/about' #displays html from views/about.html.erb
  get 'static_pages/contact' #displays html from views/contact.html.erb
end
