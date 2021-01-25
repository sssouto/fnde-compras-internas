Rails.application.routes.draw do
  get 'processos/index'
  get 'processos/show'
  get 'processos/new'
  get 'processos/create'
  get 'processos/edit'
  get 'processos/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :processos, except: %i[destroy]
  resources :itens, except: %i[destroy new]
end
