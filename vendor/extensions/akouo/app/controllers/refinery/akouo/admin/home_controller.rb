module Refinery
  module Akouo
    module Admin
      class HomeController < ::Refinery::AdminController
        def index
          @users = Refinery::User.paginate(:page => params[:page])
        end
      end
    end
  end
end
