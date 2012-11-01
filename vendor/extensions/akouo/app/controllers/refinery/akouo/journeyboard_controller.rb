module Refinery
  module Akouo
    class JourneyboardController < ::Refinery::Akouo::AkouoController

      before_filter :redirect?, :check_and_build_user_tables

      before_filter :find_page
      before_filter :find_things

      before_filter :employee_types

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/journeyboard").first
      end

      def find_things
        @profit_centers = ::Refinery::Akouo::ProfitCenter.where(:user_id => @user.id)
        @employees = ::Refinery::Akouo::JourneyboardEmployee.where(:user_id => @user.id)
      end

      def employee_types
        @employee_types = [
          ['CSR', 0],
          ['Technician', 1],
          ['Comfort Advisor', 2]
        ]
      end

    end
  end
end