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
