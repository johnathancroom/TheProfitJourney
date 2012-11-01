module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        before_filter :find_budgets
        before_filter :date_select

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

        def update_budget
          if @budget.update_attributes(params[:journeyboard_budget])
            redirect_to refinery.akouo_journeyboard_dmr_index_path, :notice => 'DMR Budgets Saved.'
          else
            render :budget
          end
        end

      protected

        def find_budgets
          @budget = @user.journeyboard_budget || @user.build_journeyboard_budget
        end

        def new_day_of_month
          @user.journeyboard_dmr_entries.where(:date => Date.today.beginning_of_month..Date.today).count + 1
        end

      end
    end
  end
end