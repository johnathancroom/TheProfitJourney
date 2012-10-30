module Refinery
  module Akouo
    class JourneyboardEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_entries'

      belongs_to :profit_center, :class_name => 'Refinery::Akouo::ProfitCenter'
      belongs_to :technician, :class_name => 'Refinery::Akouo::JourneyboardTechnician'

      attr_accessible(
        :profit_center_id, :technician_id, :date,
        :commission, :todays_pay, :revenue, :parts, :additional_labor, :accessories, :leads, :opportunities, :tickets, :hours, :fuel_cost, :agreement_1, :agreement_2, :agreement_3, :agreement_4
      )

      validates_presence_of :profit_center_id, :technician_id, :date, :commission, :todays_pay, :revenue, :parts, :accessories, :leads, :opportunities, :tickets, :hours, :fuel_cost, :additional_labor, :agreement_1, :agreement_2, :agreement_3, :agreement_4
    end
  end
end