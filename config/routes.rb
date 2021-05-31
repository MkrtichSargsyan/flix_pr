Rails.application.routes.draw do
  get 'movies' => 'movies#index'
  get 'movies/1' => 'movies#show'
end
