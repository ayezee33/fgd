Rails.application.routes.draw do
  get 'guides/guides'

  root "guides#guides"
end
