module Refinery
  module Akouo
    class JourneyboardCsrEntry < ActiveRecord::Base
      self.table_name = 'refinery_journeyboard_csr_entries'

      belongs_to :employee, :class_name => 'Refinery::Akouo::JourneyboardEmployee'

      attr_accessible :date, :lost, :sold, :sold_new_systems, :user_id, :employee_id

      validates_date :date
    end
  end
end