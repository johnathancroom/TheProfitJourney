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

  def get_plan
    if self.subscription_id.nil?
      0
    else
      transaction = AuthorizeNet::ARB::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => :sandbox)
      response = transaction.get_status(self.subscription_id)
      if response.subscription_status == "active"
        self.plan_id
      else
        0
      end
    end
  end
end