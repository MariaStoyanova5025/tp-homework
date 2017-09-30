class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	render html:"enter a"
	render html:"enter b"
		
  end
end
