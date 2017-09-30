class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	render html:"enter a"
	render html:"enter b"
	require 'open-uri' 
	content = URI(https://safe-inlet-62277.herokuapp.com/).read
		
  end
end
