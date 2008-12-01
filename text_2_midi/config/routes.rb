ActionController::Routing::Routes.draw do |map|
  map.resources :tutorials

  map.resources :users, :has_many => :songs
  map.resource :session
  map.sign_up '/signup', :controller=> "users", :action=> "new"
  map.login '/login', :controller=> "sessions", :action=> "new"
  map.logout '/logout',:controller=> "sessions", :action=> "destroy"
  map.resources :songs
  map.resources :main
  map.root :controller => "main"
  map.resources :profiles,:has_many => :users
  map.resources :tutorials 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
