module Refinery
  module Akouo
    class JourneyboardTechnician < ActiveRecord::Base
      self.table_name = 'refinery_journeyboard_technicians'

      attr_accessible :name, :user_id

      belongs_to :user, :class_name => 'Refinery::User'

      validates_presence_of :name
    end
  end
end