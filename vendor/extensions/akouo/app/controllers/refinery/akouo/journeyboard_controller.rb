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
        @profit_centers = @user.profit_centers
        @employees = @user.employees
      end

      def employee_types
        @employee_types = [
          ['CSR', 0],
          ['Technician', 1],
          ['Comfort Advisor', 2]
        ]
      end

      def date_select
        # Default date to today
        if params[:date].nil?
          @date = Date.today
          @mtd = true
        else
          # Catch invalid date error
          if (DateTime.strptime(params[:date], '%m-%d-%Y') rescue ArgumentError) == ArgumentError
            @invalid_date = true
            @date = Date.today
          else
            @date = Date.strptime(params[:date], '%m-%d-%Y')
          end
        end
      end
    end
  end
end