class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	
	render html: params[:a].to_i + params[:b].to_i
  end
end
