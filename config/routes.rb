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
  get "result" => "welcome#result"

  #admin
  get "admin" => "welcome#admin"

  #root to team
  get "team/new" => "team#new"
  get "team/delete" => "team#delete"
  post "team/create" => "team#create"
  post "team/edit_confirm" => "team#edit_confirm"
  get "team/edit" => "team#edit"

  #root to news
  get "news/new" => "news#new"
  get "news/show" => "news#show"
  post "news/create" => "news#create"
  post "news/edit_confirm" => "news#edit_confirm"
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
  get "photos/delete" => "photos#delete"

  #session root
  get "sessions/login" => "sessions#login"
  post "sessions/create" => "sessions#create"
  get "sessions/logout" => "sessions#logout"

end
