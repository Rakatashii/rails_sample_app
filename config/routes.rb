Rails.application.routes.draw do
  get 'static_pages/home' #displays html from views/home.html.erb
  get 'static_pages/help' #displays html from views/help.html.erb
  get 'static_pages/about' #with this alone, running 'rails test' gives StaticPagesControllerTest#test_should_get_about: AbstractController::ActionNotFound: The action 'about' 
  #root 'application#hello_page' could not be found for StaticPagesController - whereas, before this was written, we had:
  # Error:
  # StaticPagesControllerTest#test_should_get_about:
  # NameError: undefined local variable or method 'static_pages_about_url' for ...<..>
  root 'static_pages#home'
end
