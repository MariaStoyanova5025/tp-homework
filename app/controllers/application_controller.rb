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
     if arr[i][2].to_i % 2 != 0 
  sum = sum + arr[i][1].to_i
  end
  i+=1
 end
 render plain: '%.2f'%sum.ceil
 
  end
def interval
 file = params[:file].read
 arr = CSV.parse(file)
 i = 0
 k = 0
 sum = 0
 max = 0
 while i < arr.length - 29 do
  k = i
     while k < i + 30 do
   sum = sum + arr[k][0].to_i
   k+=1  
  end
  if sum > max
   max = sum
  end
  sum = 0
  i+=1
 end
 render plain: '%.2f'%max.ceil
 
  end
def lin_regression
	file = params[:file].read
 	arr = CSV.parse(file)
 	index = []
	soinost = []
	i = 0
	while i < index.lenght do
		index[i] = i + 1
		soinost[i] = arr[0][i]
		i+=1
	end
	linear = Regression::Linear.new(index, soinost)
	a = linear.slope	
	b = linear.intercept
	render plain: '%.6f'%a
	render plain: '%.6f'%b
    end
end

