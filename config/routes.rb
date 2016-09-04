Rails.application.routes.draw do

  root "guides#guides"

  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

  get '/guides' => 'guides#guides'

end
