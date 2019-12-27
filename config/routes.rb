Rails.application.routes.draw do
  get '/' => "home#top"
  get '/signup/' => "home#signup"
  get '/personal/' => "home#personal"
  get '/personal/assets' => "home#assets"
  get '/people' => "home#people"
  get '/people/info' => "home#info"
  get '/trade/' => "home#trade"
  get '/personal/edit' => "home#edit"
  #personalとかtradeのところはidを振ります。ひかるんがDBつくってくれたら反映します。


 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/token/new' => "token#new"
  post '/token/create' => 'token#create'
  get '/token/:id/buy' => 'token#buy'
  get 'token/index' => 'token#index'


  get '/token/yen2token' => 'token#yen2token'
  post '/token/yen2token' => 'token#publish_time_token'

  get '/' => "home#top"
  get '/token/:id/buy' => 'token#buy'
  post '/token/:id/buy' => 'token#buy_do'

  get '/token/:id' => 'token#show'

end
