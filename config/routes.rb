Rails.application.routes.draw do
	root 'application#show'
	post '/sums' => 'application#sum'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
