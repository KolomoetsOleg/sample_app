SampleApp::Application.routes.draw do

  root to: "static_pages#home"
  match '/signup',  to: 'users#new',via: 'get'

  resources :static_pages, except: [:index, :new, :create, :show, :update, :edit, :destroy] do
    collection do
      get :help
      get :about
      get :contact
      get :sign_up
      get :sign_in
    end
  end
end
