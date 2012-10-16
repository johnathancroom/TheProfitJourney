module Refinery
  module Akouo
    module Journeyboard
      class DmrController < JourneyboardController

        before_filter :find_budgets

        def index
          @date = !params[:date].nil? ? Date.strptime(params[:date], '%m-%d-%Y') : Date.today
          @entry = @user.journeyboard_dmr_entries.where(:date => @date).first
          @entries = @user.journeyboard_dmr_entries.where(:date => @date.beginning_of_month..@date)
        end

        def new
          @entry = @user.journeyboard_dmr_entries.build
          build_comfort_advisor_entries
        end

        def create
          @entry = @user.journeyboard_dmr_entries.build(params[:journeyboard_dmr_entry])

          if @entry.save
            redirect_to refinery.akouo_journeyboard_dmr_index_path, :notice => 'DMR Entry Saved.'
          else
            render :new
          end
        end

        def edit
          @entry = Refinery::Akouo::JourneyboardDmrEntry.find(params[:id])
          build_comfort_advisor_entries
        end

        def update
          @entry = Refinery::Akouo::JourneyboardDmrEntry.find(params[:id])

          if @entry.update_attributes(params[:journeyboard_dmr_entry])
            redirect_to refinery.akouo_journeyboard_dmr_index_path, :notice => 'DMR Entry Saved.'
          else
            render :edit
          end
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

        def build_comfort_advisor_entries
          @entry.user.journeyboard_dmr_comfort_advisors.each do |comfort_advisor|
            if @entry.comfort_advisor_entries.where(:comfort_advisor_id => comfort_advisor.id).blank?
              @entry.comfort_advisor_entries.build(:comfort_advisor_id => comfort_advisor.id)
            end
          end
        end

      end
    end
  end
end