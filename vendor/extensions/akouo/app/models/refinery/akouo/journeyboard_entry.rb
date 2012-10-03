module Refinery
  module Akouo
    class JourneyboardEntry < Refinery::Core::BaseModel
      self.table_name = "refinery_journeyboard_entries"

      belongs_to :profit_center, :class_name => "::Refinery::Akouo::ProfitCenter"

      attr_accessible :profit_center_id, :date, :fuel_cost
    end
  end
end