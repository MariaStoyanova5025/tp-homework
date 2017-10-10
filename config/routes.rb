Rails.application.routes.draw do
	root 'application#show'
	post '/sums' => 'application#sum'
	post '/filters' => 'application#filter'
	post '/intervals' => 'application#interval'
	post '/lin_regressions' => 'application#lin_regressions'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
