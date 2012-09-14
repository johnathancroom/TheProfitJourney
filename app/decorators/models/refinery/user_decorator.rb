Refinery::User.class_eval do
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
  belongs_to :workshop, :class_name => "Refinery::Workshops::Workshop"

  attr_accessible :workshop_id
end