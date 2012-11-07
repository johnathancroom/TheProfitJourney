module Refinery
  module Akouo
    class JourneyboardEmployee < ActiveRecord::Base
      self.table_name = 'refinery_journeyboard_employees'
      self.inheritance_column = 'inheritance_type' # Added because column name 'type' is reserved.

      attr_accessible :name, :user_id, :type, :hourly_rate

      belongs_to :user, :class_name => 'Refinery::User'
      has_many :entries, :class_name => 'Refinery::Akouo::JourneyboardEntry', :foreign_key => 'employee_id'

      validates_presence_of :name, :type, :hourly_rate
    end
  end
end