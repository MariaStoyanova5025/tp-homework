class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	params[:foo]
	render html:"enter a"	
  end
end
