class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  #Now that this is added we get yet another error: StaticPagesControllerTest#test_should_get_about: ActionController::UnknownFormat: StaticPagesController#about is missing a template for this request format and variant.
  def about 
  end
  
  def contact
  end
end
