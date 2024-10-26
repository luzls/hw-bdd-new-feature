Rottenpotatoes::Application.routes.draw do
  resources :movies
  # Add new routes here

  root :to => redirect('/movies')
  get '/movies/:id/similar', to: 'movies#show_by_director', as: :others_by_same_director
end
