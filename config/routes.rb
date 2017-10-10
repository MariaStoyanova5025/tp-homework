Rails.application.routes.draw do
	root 'application#show'
	post '/sums' => 'application#sum'
	post '/filters' => 'application#filter'
	post '/interval' => 'application#interval'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
