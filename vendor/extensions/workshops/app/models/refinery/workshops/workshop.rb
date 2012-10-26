module Refinery
  module Workshops
    class Workshop < Refinery::Core::BaseModel
      self.table_name = 'refinery_workshops'

      attr_accessible :title, :description, :location, :start_date, :end_date, :start_time, :end_time, :seats, :position, :price

      acts_as_indexed :fields => [:title, :description, :location]

      validates :title, :presence => true

      has_many :users, :class_name => "Refinery::User"

      def self.current
        where("start_date > ?", Time.now.beginning_of_day).order('start_date ASC')
      end

      def date
        "#{start_date.to_formatted_s(:pretty)} to #{end_date.to_formatted_s(:pretty)}"
      end

      def time
        "#{start_time.to_formatted_s(:time)} - #{end_time.to_formatted_s(:time)} #{Time.now.zone}"
      end
    end
  end
end
