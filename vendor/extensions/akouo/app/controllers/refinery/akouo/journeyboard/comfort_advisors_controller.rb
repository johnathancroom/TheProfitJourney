module Refinery
  module Akouo
    module Journeyboard
      class ComfortAdvisorsController < JourneyboardController

        def index
          @comfort_advisors = @user.journeyboard_dmr_comfort_advisors
        end

        def new
          @comfort_advisor = @user.journeyboard_dmr_comfort_advisors.build
        end

        def create
          @comfort_advisor = @user.journeyboard_dmr_comfort_advisors.build(params[:journeyboard_dmr_comfort_advisor])

          if @comfort_advisor.save
            redirect_to refinery.akouo_journeyboard_comfort_advisors_path, :notice => 'Comfort Advisor Added.'
          else
            render :new
          end
        end

        def edit
          @comfort_advisor = Refinery::Akouo::JourneyboardDmrComfortAdvisor.find(params[:id])
        end

        def update
          @comfort_advisor = Refinery::Akouo::JourneyboardDmrComfortAdvisor.find(params[:id])

          if @comfort_advisor.update_attributes(params[:journeyboard_dmr_comfort_advisor])
            redirect_to refinery.akouo_journeyboard_comfort_advisors_path, :notice => 'Comfort Advisor Saved.'
          else
            render :edit
          end
        end

      end
    end
  end
end