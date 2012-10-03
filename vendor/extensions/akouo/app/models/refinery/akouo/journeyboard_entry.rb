module Refinery
  module Akouo
    class JourneyboardEntry < Refinery::Core::BaseModel
      self.table_name = "refinery_journeyboard_entries"

      belongs_to :user, :class_name => "::Refinery::User"

      attr_accessible :date, :fuel_cost
    end
  end
end