module Refinery
  module Akouo
    class HomeController < ::ApplicationController

      before_filter :redirect?
      before_filter :find_page

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/akouo").first
      end

    end
  end
end