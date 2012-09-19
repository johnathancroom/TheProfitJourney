module Refinery
  module Akouo
    class LastYear < Refinery::Core::BaseModel
      self.table_name = 'ly'

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
