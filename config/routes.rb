Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#init'
  get '/new', to:'pages#new'
  post '/new', to:'pages#createGame'
  get '/join', to: 'pages#join'
  post '/join', to:'pages#joinGame'
  get '/lobby', to: 'pages#lobby'
  get '/game', to:'pages#game'
end