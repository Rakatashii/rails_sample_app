class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello_page
    render html: "Homepage - Welcome"
  end
end
