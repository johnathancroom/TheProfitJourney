module Refinery
  module Workshops
    class Workshop < Refinery::Core::BaseModel
      self.table_name = 'refinery_workshops'

      attr_accessible :title, :description, :location, :date, :seats, :position, :price

      acts_as_indexed :fields => [:title, :description, :location]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
