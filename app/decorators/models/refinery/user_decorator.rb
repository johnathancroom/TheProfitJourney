Refinery::User.class_eval do
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
  has_one :last_year, :class_name => "Refinery::Akouo::LastYear"
  has_one :profit_comparison_last_year, :class_name => "Refinery::Akouo::ProfitComparisonLastYear"
  belongs_to :workshop, :class_name => "Refinery::Workshops::Workshop"

  attr_accessible(
    :workshop_id,
    :first_name, :last_name,
    :customer_attributes, :last_year_attributes, :profit_comparison_last_year_attributes
  )

  accepts_nested_attributes_for :customer, :last_year, :profit_comparison_last_year

  validates_presence_of :first_name, :last_name
end