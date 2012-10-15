module Refinery
  module Akouo
    class JourneyboardDmrComfortAdvisorEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_dmr_comfort_advisor_entries'

      belongs_to :comfort_advisor, :class_name => 'Refinery::Akouo::JourneyboardDmrComfortAdvisor'
    end
  end
end