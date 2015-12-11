Rails.application.routes.draw do

  devise_for :users
	namespace :admin do
		resources :clientes
	end

	
	
	root 'paginas#principal'

	get '/cardapio' => 'paginas#cardapio', as: :cardapio

end
