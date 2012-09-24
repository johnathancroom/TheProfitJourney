Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :akouo do
    resources :home, :path => "", :only => [:index]

    get "start" => "sheet#start/show"
    get "start/edit" => "sheet#start/edit"
    put "start" => "sheet#start_update"

    get "vision" => "sheet#vision/show"
    get "vision/edit" => "sheet#vision/edit"
    put "vision" => "sheet#start_update"

    get "last_year" => "sheet#last_year/show"
    get "last_year/edit" => "sheet#last_year/edit"
    put "last_year" => "sheet#last_year_update"
  end

  namespace :akouo, :path => "" do
    get "register" => "users#new"
    put "register" => "users#create"

    get "account" => "users#show"
    get "account/plans" => "payments#new"
    put "account/plans" => "payments#create"
  end

  devise_scope :refinery_user do
    namespace :akouo, :path => "" do
      get "login" => "sessions#new"
      post "login" => "sessions#create"

      get "user/password/new" => "passwords#new"
      post "user/password/new" => "passwords#create"
    end
  end

  # Admin routes
  namespace :akouo, :path => '' do
    namespace :admin, :path => 'refinery/akouo' do
      resources :home, :path => "", :only => [:index]

      resources :customers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
