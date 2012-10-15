module Refinery
  module Akouo
    class JourneyboardDmrEntry < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_dmr_entries'

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end