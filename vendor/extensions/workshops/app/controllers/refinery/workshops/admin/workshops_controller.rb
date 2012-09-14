module Refinery
  module Workshops
    module Admin
      class WorkshopsController < ::Refinery::AdminController

        crudify :'refinery/workshops/workshop', :xhr_paging => true

        def users
          @workshop = Workshop.find(params[:id])
          @users = Refinery::User.where("workshop_id = ?", params[:id])
        end

      end
    end
  end
end
