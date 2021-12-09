Rails.application.routes.draw do

  resources :act_ptematicos
  resources :act_senderismos
  resources :act_buceos
  resources :preguntasfrecuentes

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
