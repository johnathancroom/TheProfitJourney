Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :akouo do
    resources :home, :path => '', :only => [:index]

    get 'start' => 'sheet#start'
    put 'start' => 'sheet#start_update'

    get 'vision' => 'sheet#vision'
    put 'vision' => 'sheet#start_update'

    get 'last_year' => 'sheet#last_year'
    put 'last_year' => 'sheet#last_year_update'

    get 'next_year' => 'sheet#next_year'
    put 'next_year' => 'sheet#next_year_update'
  end

  namespace :akouo, :path => '' do
    get 'register' => 'users#new'
    put 'register' => 'users#create'

    get 'account' => 'users#show'
    put 'account' => 'users#update'
    get 'account/plans' => 'payments#new'
    put 'account/plans' => 'payments#create'

    namespace :journeyboard do
      resources :technicians, :except => [:destroy]
      resources :entries, :except => [:show, :destroy]
      resources :dmr, :path => '', :except => [:show, :destroy] do
        collection do
          get 'budget'
          put 'budget' => 'dmr#update_budget'
        end
      end
    end
  end

  devise_scope :refinery_user do
    namespace :akouo, :path => '' do
      get 'login' => 'sessions#new'
      post 'login' => 'sessions#create'

      get 'user/password/new' => 'passwords#new'
      post 'user/password/new' => 'passwords#create'
    end
  end

  # Admin routes
  namespace :akouo, :path => '' do
    namespace :admin, :path => 'refinery/akouo' do
      resources :home, :path => '', :only => [:index]

      resources :customers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
