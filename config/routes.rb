CodetvEngineyard::Application.routes.draw do
  get "welcome/index"
  post '/set_key' => 'keys#set_key'
  post '/get_key' => 'keys#get_key'
  root to: 'welcome#index'
  match 'railsthemes/landing' => 'railsthemes#landing'
  match 'railsthemes/inner' => 'railsthemes#inner'
  match 'railsthemes/jquery_ui' => 'railsthemes#jquery_ui'
end
