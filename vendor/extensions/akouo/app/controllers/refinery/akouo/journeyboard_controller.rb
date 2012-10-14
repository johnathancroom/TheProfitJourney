module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :redirect?, :check_and_build_user_tables

      before_filter :find_page
      before_filter :find_things

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/journeyboard").first
      end

      def find_things
        @profit_centers = ::Refinery::Akouo::ProfitCenter.where(:user_id => @user.id)
        @technicians = ::Refinery::Akouo::JourneyboardTechnician.where(:user_id => @user.id)
      end

    end
  end
end