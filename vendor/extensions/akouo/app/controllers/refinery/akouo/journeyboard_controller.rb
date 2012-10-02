module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :find_page

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/journeyboard").first
      end

    end
  end
end