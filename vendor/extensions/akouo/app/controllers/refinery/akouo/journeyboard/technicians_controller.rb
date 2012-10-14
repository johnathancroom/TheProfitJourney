module Refinery
  module Akouo
    module Journeyboard
      class TechniciansController < JourneyboardController

        def show
          @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

          error_404 if @technician.user != @user
        end

        def new
          @technician = Refinery::Akouo::JourneyboardTechnician.new
        end

        def edit
          @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

          error_404 if @technician.user != @user
        end

        def create
          @technician = @user.technicians.build(params[:journeyboard_technician])

          if @technician.save
            redirect_to refinery.akouo_journeyboard_technicians_path, :notice => "Technician Added"
          else
            render :new
          end
        end

        def update
          @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

          error_404 if @technician.user != @user

          if @technician.update_attributes(params[:journeyboard_technician])
            redirect_to refinery.akouo_journeyboard_technicians_path, :notice => "Technician Saved"
          else
            render :edit
          end
        end

      end
    end
  end
end