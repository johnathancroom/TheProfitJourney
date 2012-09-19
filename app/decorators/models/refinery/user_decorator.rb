Refinery::User.class_eval do
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
  has_one :last_year, :class_name => "Refinery::Akouo::LastYear"
  belongs_to :workshop, :class_name => "Refinery::Workshops::Workshop"

  attr_accessible :workshop_id
end