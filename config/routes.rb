Rails.application.routes.draw do
devise_for :users,:skip => [:registrations], :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}  
    as :user do
      get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
      put 'users/:id' => 'devise/registrations#update', :as => 'user_registration'            
    end
      



  
  resources :posts do
    resources :comments
  end
  
  root "posts#index"
  get '/about', to: 'pages#about'
  


end
