class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	render html:"momec"	
  end
end
