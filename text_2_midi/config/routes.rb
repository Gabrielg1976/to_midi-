ActionController::Routing::Routes.draw do |map|
  map.resources :users, :has_many => :songs
  map.resource :session
  map.sign_up '/signup', :controller=> "users", :action=> "new"
  map.login '/login', :controller=> "sessions", :action=> "new"
  map.logout '/logout',:controller=> "sessions", :action=> "destroy"
  map.resources :songs
  map.root :controller => "songs"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
