module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        def index
          @date = !params[:date].nil? ? Date.strptime(params[:date], "%m-%d-%Y") : Date.today
        end

      end
    end
  end
end