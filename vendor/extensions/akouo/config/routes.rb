Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :akouo do
    resources :home, :path => "", :only => [:index]
    resource :customer, :only => [:show, :edit, :update]
  end

  # Admin routes
  namespace :akouo, :path => '' do
    namespace :admin, :path => 'refinery/akouo' do
      resources :akouos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
