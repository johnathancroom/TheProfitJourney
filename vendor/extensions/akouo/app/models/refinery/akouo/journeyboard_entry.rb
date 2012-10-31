module Refinery
  module Akouo
    class JourneyboardEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_entries'

      belongs_to :profit_center, :class_name => 'Refinery::Akouo::ProfitCenter'
      belongs_to :employee, :class_name => 'Refinery::Akouo::JourneyboardEmployee'

      attr_accessible(
        :profit_center_id, :employee_id, :date,
        :commission, :todays_pay, :revenue, :parts, :additional_labor, :accessories, :leads, :opportunities, :calls_run, :hours, :fuel_cost, :agreement_1, :agreement_2, :agreement_3, :agreement_4, :warranty_calls_run, :membership_opportunities, :backlog
      )

      validates_presence_of :profit_center_id, :employee_id, :date, :commission, :todays_pay, :revenue, :parts, :accessories, :leads, :opportunities, :calls_run, :hours, :fuel_cost, :additional_labor, :agreement_1, :agreement_2, :agreement_3, :agreement_4, :warranty_calls_run, :membership_opportunities, :backlog

      def cogs
        commission+todays_pay+fuel_cost+parts+additional_labor
      end
    end
  end
end