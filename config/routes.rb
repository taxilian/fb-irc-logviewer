FbIrcLogviewer::Application.routes.draw do
  resources :irc_channels, :only => [:index, :show] do
    resources :log_files, :only => [:show]
  end
  root :to => 'irc_channels#index'
end
