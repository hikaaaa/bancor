Rails.application.routes.draw do
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/token/new' => "token#new"
  post '/token/create' => 'token#create'
  get '/token/:id/buy' => 'token#buy'
  get 'token/index' => 'token#index'
  get '/token/:id' => 'token#show'

  get '/' => "home#top"
  get '/token/:id/buy' => 'token#buy'
  post '/token/:id/buy' => 'token#buy_do'
end
