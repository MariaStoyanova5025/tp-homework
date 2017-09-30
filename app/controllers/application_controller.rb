class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	5 + 6
	render html:"enter a"	
  end
end
