SampleApp::Application.routes.draw do

  root to: "static_pages#home"
  match '/signup',  to: 'users#new',via: 'get'
  match '/signin' =>  "sessions#new", via: :get
  match '/signout' => "sessions#destroy", via: :delete

  resources :static_pages, except: [:index, :new, :create, :show, :update, :edit, :destroy] do
    collection do
      get :help
      get :about
      get :contact
      get :sign_up
      get :sign_in
    end
  end

  resources :users do

  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :microposts, only: [:create, :destroy]

end
