require 'csv'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions


  def sum
	file = params[:file].read
	arr_of_arrs = CSV.parse(file)
	i = 0
	sum = 0
	while i < arr_of_arrs.length do
   		sum += arr_of_arrs[i][0].to_i
		i+=1
	end
	render plain: sum.ceil.round(3)
	
  end
end
