module Refinery
  module Akouo
    class HomeController < ::Refinery::Akouo::AkouoController

      before_filter { |controller| controller.redirect? :workshop }
      before_filter :find_page

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/akouo").first
      end

    end
  end
end