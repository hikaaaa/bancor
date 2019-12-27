Rails.application.routes.draw do
  get '/' => "home#top"
  get '/about' => "home#about"
  get '/login' => "home#log_in"
  post '/login' => "home#log_in_do"
  get '/register-tel/' => "home#register_tel"
  get '/register/' => "home#register"
  post '/register' => "home#register_do"


  get '/personal/' => "home#personal"
  get '/people/' => "home#people"
  get '/personal/assets/' => "home#assets"
  get '/personal/edit/' => "home#edit"
  get '/personal/new' => "token#new"

  post '/token/create' => "token#create"
  get '/token/:id/buy' => "token#buy"
  get '/index' => "token#index"
  get '/token/:id' => "token#show"
  post '/token/:id/buy' => "token#buy_do"




end
