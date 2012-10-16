module Refinery
  module Akouo
    class JourneyboardDmrComfortAdvisor < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_dmr_comfort_advisors'

      belongs_to :user, :class_name => 'Refinery::User'
      has_many :entries, :class_name => 'Refinery::Akouo::JourneyboardDmrComfortAdvisorEntry'

      attr_accessible :name

      validates_presence_of :name
    end
  end
end