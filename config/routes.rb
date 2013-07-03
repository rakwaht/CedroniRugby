Cedroni::Application.routes.draw do

  root :to => 'welcome#index'

  #welcome roots
  get "index" => "welcome#index"
  get "societa" => "welcome#societa"
  get "maschile" => "welcome#maschile"
  get "femminile" => "welcome#femminile"
  get "contatti" => "welcome#contatti"
  get "gioca_con_noi" => "welcome#gioca"

  #root to news
  get "news/new" => "news#new"
  get "news/show" => "news#show"
  post "news/create" => "news#create"
  get "news/edit" => "news#edit"
  get "news/delete" => "news#delete"
  get "news/archive" => "news#archive" 

end
