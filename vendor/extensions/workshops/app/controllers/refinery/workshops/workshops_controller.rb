module Refinery
  module Workshops
    class WorkshopsController < ::ApplicationController

      before_filter :find_all_workshops
      before_filter :find_workshop, :only => [:show, :signup_new, :signup_create]
      before_filter :find_page

      def index
      end

      def show
      end

      def signup_new
        @user = ::Refinery::User.new
      end

      def signup_create
        @user = ::Refinery::User.new(params[:user])
        @user.add_role(:refinery) # Add refinery role to user

        if @user.save
          render :signup_new
        else
          render :signup_new
        end
      end

    protected

      def find_all_workshops
        @workshops = Workshop.where("date > ?", Time.now.beginning_of_day).order('date ASC')
      end

      def find_workshop
        @workshop = Workshop.find(params[:id])
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/workshops/calendar").first
      end

    end
  end
end
