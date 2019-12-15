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

end
