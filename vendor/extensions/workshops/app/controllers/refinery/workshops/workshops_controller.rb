module Refinery
  module Workshops
    class WorkshopsController < ::ApplicationController

      before_filter :find_all_workshops
      before_filter :find_workshop, :only => [:show]
      before_filter :find_page

    protected

      def find_all_workshops
        @workshops = Workshop.current
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
