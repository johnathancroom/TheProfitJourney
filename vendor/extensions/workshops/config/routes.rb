Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :workshops do
    match "calendar" => "workshops#index", :as => "workshops"
    match "calendar/:id" => "workshops#show", :as => "workshop"
    #resources :workshops, :only => [:index, :show]
  end

  # Admin routes
  namespace :workshops, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :workshops, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
