module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        def index
          @date = !params[:date].nil? ? Date.strptime(params[:date], '%m-%d-%Y') : Date.today
          @entry = @user.journeyboard_dmr_entries.where(:date => @date).first
          @entries = @user.journeyboard_dmr_entries.where(:date => @date.beginning_of_month..@date)
        end

        def new
          @entry = @user.journeyboard_dmr_entries.build
        end

        def create
          @entry = @user.journeyboard_dmr_entries.build(params[:journeyboard_dmr_entry])

          if @entry.save
            redirect_to refinery.akouo_journeyboard_dmr_index_path, :notice => 'DMR Entry Saved.'
          else
            render :new
          end
        end

        def edit
          @entry = Refinery::Akouo::JourneyboardDmrEntry.find(params[:id])
        end

        def update
          @entry = Refinery::Akouo::JourneyboardDmrEntry.find(params[:id])

          if @entry.update_attributes(params[:journeyboard_dmr_entry])
            redirect_to refinery.akouo_journeyboard_dmr_index_path, :notice => 'DMR Entry Saved.'
          else
            render :edit
          end
        end

      end
    end
  end
end