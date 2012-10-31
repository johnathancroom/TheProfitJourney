module Refinery
  module Akouo
    module Journeyboard
      class EntriesController < JourneyboardController

        before_filter :find_entry, :only => [:edit, :update]

        def index
          if params[:date].nil?
            @date = Date.today
            @mtd = true
          else
            @date = Date.strptime(params[:date], "%m-%d-%Y")
          end
        end

        def new
          @entry = JourneyboardEntry.new
        end

        def create
          @entry = ::Refinery::Akouo::ProfitCenter.find(params[:journeyboard_entry][:profit_center_id]).journeyboard_entries.build(params[:journeyboard_entry])

          if @entry.save
            redirect_to refinery.akouo_journeyboard_entries_path, :notice => "Entry successfully added."
          else
            render :new
          end
        end

        def edit
          error_404 if @entry.profit_center.nil? or @entry.profit_center.user != @user

          session[:journeyboard_edit_return_to] = request.referer
        end

        def update
          error_404 if @entry.profit_center.nil? or @entry.profit_center.user != @user

          if @entry.update_attributes(params[:journeyboard_entry])
            redirect_to (session.delete(:journeyboard_edit_return_to) || refinery.akouo_journeyboard_entries_path), :notice => "Entry successfully saved."
          else
            render :edit
          end
        end

      protected

        def find_entry
          @entry = JourneyboardEntry.find(params[:id])
        end

      end
    end
  end
end