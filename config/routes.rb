Rails.application.routes.draw do
  get '/' => "home#top"
<<<<<<< HEAD
  get '/about' => "home#about"

  get '/login' => "home#login_form"
  post '/login' => "home#login"

  post '/logout' => "home#logout"

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



=======
  get '/signup/' => "home#signup"
  get '/personal/' => "home#personal"
  get '/personal/assets' => "home#assets"
  get '/people' => "home#people"
  get '/people/info' => "home#info"
  get '/trade/' => "home#trade"
  get '/personal/edit' => "home#edit"
  #personalとかtradeのところはidを振ります。ひかるんがDBつくってくれたら反映します。
>>>>>>> 6c4e07bc94c7fd2a00fad4b043bd393e373cf0a5

end
