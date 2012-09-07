module Refinery
  module Workshops
    class WorkshopsController < ::ApplicationController

      before_filter :find_all_workshops
      before_filter :find_page

      def index
      end

      def show
        @workshop = Workshop.find(params[:id])
      end

      def signup
        @workshop = Workshop.find(params[:id])
      end

    protected

      def find_all_workshops
        @workshops = Workshop.where("date > ?", Time.now.beginning_of_day).order('date ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/workshops/calendar").first
      end

    end
  end
end
