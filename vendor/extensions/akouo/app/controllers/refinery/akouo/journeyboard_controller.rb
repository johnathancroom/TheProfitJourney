module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :redirect?, :check_and_build_user_tables

      before_filter :find_page
      before_filter :find_things
      before_filter :find_entry, :only => [:edit, :update]

      def index
        @date = !params[:date].nil? ? Date.strptime(params[:date], "%m-%d-%Y") : Date.today
      end

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

      def edit
        error_404 if @entry.profit_center.nil? or @entry.profit_center.user != @user

        session[:journeyboard_edit_return_to] = request.referer
      end

      def update
        error_404 if @entry.profit_center.nil? or @entry.profit_center.user != @user

        if @entry.update_attributes(params[:journeyboard_entry])
          redirect_to (session.delete(:journeyboard_edit_return_to) || refinery.akouo_journeyboard_index_path), :notice => "Entry successfully saved."
        else
          render :edit
        end
      end

      def technicians
        render "refinery/akouo/journeyboard/technicians/index"
      end

      def show_technician
        @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

        error_404 if @technician.user != @user

        render "refinery/akouo/journeyboard/technicians/show"
      end

      def new_technician
        @technician = Refinery::Akouo::JourneyboardTechnician.new

        render "refinery/akouo/journeyboard/technicians/new"
      end

      def edit_technician
        @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

        error_404 if @technician.user != @user

        render "refinery/akouo/journeyboard/technicians/edit"
      end

      def create_technician
        @technician = @user.technicians.build(params[:journeyboard_technician])

        if @technician.save
          redirect_to refinery.technicians_akouo_journeyboard_index_path, :notice => "Technician Added"
        else
          render render "refinery/akouo/journeyboard/technicians/new"
        end
      end

      def update_technician
        @technician = Refinery::Akouo::JourneyboardTechnician.find(params[:id])

        error_404 if @technician.user != @user

        if @technician.update_attributes(params[:journeyboard_technician])
          redirect_to refinery.technicians_akouo_journeyboard_index_path, :notice => "Technician Saved"
        else
          render render "refinery/akouo/journeyboard/technicians/edit"
        end
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/journeyboard").first
      end

      def find_things
        @profit_centers = ::Refinery::Akouo::ProfitCenter.where(:user_id => @user.id)
        @technicians = ::Refinery::Akouo::JourneyboardTechnician.where(:user_id => @user.id)
      end

      def find_entry
        @entry = JourneyboardEntry.find(params[:id])
      end

    end
  end
end