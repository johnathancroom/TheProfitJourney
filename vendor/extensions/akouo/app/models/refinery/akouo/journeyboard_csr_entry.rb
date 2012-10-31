module Refinery
  module Akouo
    class JourneyboardCsrEntry < ActiveRecord::Base
      self.table_name = 'refinery_journeyboard_csr_entries'

      attr_accessible :date, :lost, :sold, :sold_new_systems, :user_id
    end
  end
end