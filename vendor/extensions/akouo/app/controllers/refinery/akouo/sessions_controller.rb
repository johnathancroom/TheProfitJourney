module Refinery
  module Akouo
    class SessionsController < Devise::SessionsController

      before_filter :find_page

      def create
        # Create new user
        super
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/login").first
      end

    end
  end
end