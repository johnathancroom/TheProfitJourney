module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :find_page
      before_filter :find_entry, :only => [:edit, :update]

      def index
        @entries = @user.journeyboard_entries
      end

      def new
        @entry = JourneyboardEntry.new
      end

      def create
        @entry = @user.journeyboard_entries.build(params[:journeyboard_entry])
        #@entry.user_id = @user.id # This shouldn't be necessary

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

      def find_entry
        @entry = JourneyboardEntry.find(params[:id])
      end

    end
  end
end