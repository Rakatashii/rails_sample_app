Rails.application.routes.draw do
  get 'foo/bar'

  get 'foo/baz'

  get 'static_pages/home' #displays html from views/home.html.erb
  get 'static_pages/help' #displays html from views/help.html.erb
  #root 'application#hello_page'
  root 'static_pages#home'
end
