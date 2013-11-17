QuickBlog::Application.routes.draw do

  root :to => 'application#index'

  resources :posts do
    resources :comments, :only => [:create]
  end

end
