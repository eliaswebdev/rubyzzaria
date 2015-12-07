Rails.application.routes.draw do

  resources :clientes
  root 'paginas#principal'

end
