module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :find_page
      before_filter :find_profit_centers, :only => [:index, :new, :create, :edit, :update]
      before_filter :find_entry, :only => [:edit, :update]

      def new
        @entry = JourneyboardEntry.new
      end

      def create
        @entry = ::Refinery::Akouo::ProfitCenter.find(params[:journeyboard_entry][:profit_center_id]).journeyboard_entries.build(params[:journeyboard_entry])

        if @entry.save
          redirect_to refinery.akouo_journeyboard_index_path, :notice => "Entry successfully added."
        else
          render :new
        end
      end

      def update
        if @entry.update_attributes(params[:journeyboard_entry])
          redirect_to refinery.akouo_journeyboard_index_path, :notice => "Entry successfully saved."
        else
          render :edit
        end
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/journeyboard").first
      end

      def find_profit_centers
        @profit_centers = ::Refinery::Akouo::ProfitCenter.where(:user_id => @user.id)
      end

      def find_entry
        @entry = JourneyboardEntry.find(params[:id])
      end

    end
  end
end