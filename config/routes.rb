Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#init'
  get '/new', to:'pages#new'
  post '/new', to:'pages#createGame'
  get '/join', to: 'pages#join'
  get '/game', to:'pages#game'
end