module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        before_filter :find_budgets

        def index
          @date = !params[:date].nil? ? Date.strptime(params[:date], '%m-%d-%Y') : Date.today
          #@entry = @user.journeyboard_dmr_entries.where(:date => @date).first || @user.journeyboard_dmr_entries.build(:day_of_month => new_day_of_month)
          #@entries = @user.journeyboard_dmr_entries.where(:date => @date.beginning_of_month..@date)
          @budget_days = @budget.budget_days
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