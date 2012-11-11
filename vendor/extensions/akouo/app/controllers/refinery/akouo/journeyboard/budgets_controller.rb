module Refinery
  module Akouo
    module Journeyboard
      class BudgetsController < JourneyboardController

        def index
          @budgets = @user.journeyboard_budgets.order('date DESC')
        end

        def new
          @budget = @user.journeyboard_budgets.build
        end

        def create
          @budget = @user.journeyboard_budgets.build(params[:journeyboard_budget])

          if @budget.save
            redirect_to refinery.akouo_journeyboard_budgets_path, :notice => 'Budgets Saved.'
          else
            render :new
          end
        end

        def edit
          @budget = @user.journeyboard_budgets.find(params[:id])
        end

        def update
          @budget = @user.journeyboard_budgets.find(params[:id])

          if @budget.update_attributes(params[:journeyboard_budget])
            redirect_to refinery.akouo_journeyboard_budgets_path, :notice => 'Budgets Saved.'
          else
            render :edit
          end
        end

      end
    end
  end
end