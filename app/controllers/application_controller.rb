class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	
	render html: 5 + 6
  end
end
