class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
	render html:"enter a"
	render html:"enter b"
	Rack::Utils.parse_nested_query 'param1=value1&param2=value2&param3=value3'
		
  end
end
