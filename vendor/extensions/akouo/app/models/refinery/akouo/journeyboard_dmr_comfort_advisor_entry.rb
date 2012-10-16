module Refinery
  module Akouo
    class JourneyboardDmrComfortAdvisorEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_dmr_comfort_advisor_entries'

      attr_accessible :comfort_advisor_id, :sold, :calls_run, :calls_sold

      belongs_to :comfort_advisor, :class_name => 'Refinery::Akouo::JourneyboardDmrComfortAdvisor'
      belongs_to :dmr_entry, :class_name => 'Refinery::Akouo::JourneyboardDmrEntry'

      validates_presence_of :comfort_advisor_id, :sold, :calls_run, :calls_sold
    end
  end
end