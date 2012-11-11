module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        before_filter :date_select
        before_filter :find_budgets

        def index
          # Day of month is whichever profit center has the most entries
          @day_of_month = [
            @user.profit_centers.first.journeyboard_entries.where(:date => @date.beginning_of_month..@date).count,
            @user.profit_centers.second.journeyboard_entries.where(:date => @date.beginning_of_month..@date).count,
            @user.profit_centers.third.journeyboard_entries.where(:date => @date.beginning_of_month..@date).count,
            @user.profit_centers.fourth.journeyboard_entries.where(:date => @date.beginning_of_month..@date).count
          ].max

          @entries = [
            @user.profit_centers.first.journeyboard_entries.where(:date => @date),
            @user.profit_centers.second.journeyboard_entries.where(:date => @date),
            @user.profit_centers.third.journeyboard_entries.where(:date => @date),
            @user.profit_centers.fourth.journeyboard_entries.where(:date => @date)
          ]
          @entries_mtd = [
            @user.profit_centers.first.journeyboard_entries.where(:date => @date.beginning_of_month..@date),
            @user.profit_centers.second.journeyboard_entries.where(:date => @date.beginning_of_month..@date),
            @user.profit_centers.third.journeyboard_entries.where(:date => @date.beginning_of_month..@date),
            @user.profit_centers.fourth.journeyboard_entries.where(:date => @date.beginning_of_month..@date)
          ]
          @csr_entries = @user.journeyboard_csr_entries.where(:date => @date)
          @csr_entries_mtd = @user.journeyboard_csr_entries.where(:date => @date.beginning_of_month..@date)
        end

      protected

        def find_budgets
          @budget = @user.journeyboard_budgets.where(:date => @date.beginning_of_month).first || @user.journeyboard_budgets.build
        end

        def new_day_of_month
          @user.journeyboard_dmr_entries.where(:date => Date.today.beginning_of_month..Date.today).count + 1
        end

      end
    end
  end
end