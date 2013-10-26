Cedroni::Application.routes.draw do

  root :to => 'welcome#index'

  #welcome roots
  get "index" => "welcome#index"
  get "societa" => "welcome#societa"
  get "maschile" => "welcome#maschile"
  get "femminile" => "welcome#femminile"
  get "contatti" => "welcome#contatti"
  get "gioca_con_noi" => "welcome#gioca"
  get "galleria" => "welcome#galleria"
  get "left" => "welcome#left"
  get "right" => "welcome#right"

  #admin
  get "admin" => "welcome#admin"

  #root to news
  get "news/new" => "news#new"
  get "news/show" => "news#show", as: "news"
  post "news/create" => "news#create"
  get "news/edit" => "news#edit"
  get "news/delete" => "news#delete"
  get "news/archive" => "news#archive" 

  #root to album
  get "albums/new" => "albums#new"
  get "albums/show_admin" => "albums#show_admin"
  post "albums/create" => "albums#create"
  get "albums/show" => "albums#show"
  get "albums/delete" => "albums#delete"

  #root to photo
  get "photos/new" => "photos#new"
  post "photos/create" => "photos#create"

  #session root
  get "sessions/login" => "sessions#login"
  post "sessions/create" => "sessions#create"
  get "sessions/logout" => "sessions#logout"

end
