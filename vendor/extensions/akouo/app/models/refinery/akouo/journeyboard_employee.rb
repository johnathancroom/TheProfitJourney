module Refinery
  module Akouo
    class JourneyboardEmployee < ActiveRecord::Base
      self.table_name = 'refinery_journeyboard_employees'

      attr_accessible :name, :user_id

      belongs_to :user, :class_name => 'Refinery::User'
      has_many :entries, :class_name => 'Refinery::Akouo::JourneyboardEntry', :foreign_key => 'employee_id'

      validates_presence_of :name
    end
  end
end