Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :akouo do
    resources :home, :path => '', :only => [:index]

    get 'start' => 'sheet#start'
    put 'start' => 'sheet#start_update'

    get 'vision' => 'sheet#vision'
    put 'vision' => 'sheet#start_update'

    get 'to_implement' => 'sheet#to_implement'
    put 'to_implement' => 'sheet#to_implement_update'

    get 'organization_chart' => 'sheet#organization_chart'
    put 'organization_chart' => 'sheet#organization_chart_update'

    get 'last_year' => 'sheet#last_year'
    put 'last_year' => 'sheet#last_year_update'

    get 'demand_trend' => 'sheet#demand_trend'
    put 'demand_trend' => 'sheet#demand_trend_update'

    get 'demand_trend_chart' => 'sheet#demand_trend_chart'

    get 'next_year' => 'sheet#next_year'
    put 'next_year' => 'sheet#next_year_update'

    get 'projection_chart' => 'sheet#projection_chart'

    get 'advertising_plan' => 'sheet#advertising_plan'
    put 'advertising_plan' => 'sheet#advertising_plan_update'

    get 'what_if_analysis' => 'sheet#what_if_analysis'
    put 'what_if_analysis' => 'sheet#what_if_analysis_update'

    get 'what_if_projection' => 'sheet#what_if_projection'

    get 'call_requirements' => 'sheet#call_requirements'

    get 'tech_requirements' => 'sheet#tech_requirements'

    get 'profit_comparison' => 'sheet#profit_comparison'

    get 'budget_snapshot' => 'sheet#budget_snapshot'

    get 'month' => 'sheet#month'
    put 'month' => 'sheet#month_update'
  end

  namespace :akouo, :path => '' do
    get 'register' => 'users#new'
    put 'register' => 'users#create'

    get 'account' => 'users#show'
    put 'account' => 'users#update'
    get 'account/payments' => 'payments#new'
    put 'account/payments' => 'payments#create'

    namespace :journeyboard do
      resources :employees, :except => [:destroy]
      resources :entries, :except => [:show, :destroy]
      resources :csr_entries, :except => [:index, :show, :destroy]
      resources :dmr, :path => '', :only => [:index]
      resources :budgets, :except => [:show, :destroy]
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
