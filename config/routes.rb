ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'states', :action => 'index'
  map.resources :states
end
