Rails.application.routes.draw do

  root "guides#guides"
  get '/guides' => 'guides#guides'

end
