require 'csv'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions


  def sum
	file = params[:file].read
	arr = CSV.parse(file)
	i = 0
	sum = 0
	while i < arr.length do
   		sum = sum + arr[i][0].to_i
		i+=1
	end
	render plain: '%.2f'%sum.ceil
	
  end

  def filter
 file = params[:file].read
 arr = CSV.parse(file)
 i = 0
 sum = 0
 while i < arr.length do
     if arr[i][2] % 2 != 0 
  sum = sum + arr[i][1].to_i
  end
  i+=1
 end
 render plain: '%.2f'%sum.ceil
 
  end
end

