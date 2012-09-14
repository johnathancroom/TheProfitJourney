Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :workshops do
    resources :workshops, :path => "calendar", :only => [:index, :show] do
      member do
        get "signup" => "workshops#signup_new"
        put "signup" => "workshops#signup_create"
      end
    end
    #resources :workshops, :only => [:index, :show]
  end

  # Admin routes
  namespace :workshops, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :workshops, :except => :show do
        member do
          get :users
        end
        collection do
          post :update_positions
        end
      end
    end
  end

end
