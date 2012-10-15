module Refinery
  module Akouo
    class JourneyboardBudget < Refinery::Core::BaseModel
      self.table_name = 'refinery_journeyboard_budgets'

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end