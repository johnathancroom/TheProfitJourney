Refinery::User.class_eval do

  has_many :profit_centers, :class_name => 'Refinery::Akouo::ProfitCenter'
  belongs_to :workshop, :class_name => 'Refinery::Workshops::Workshop'
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
  has_one :journeyboard_budget, :class_name => 'Refinery::Akouo::JourneyboardBudget'
  has_many :employees, :class_name => 'Refinery::Akouo::JourneyboardEmployee'
  has_many :journeyboard_csr_entries, :class_name => 'Refinery::Akouo::JourneyboardCsrEntry'

  attr_accessible(
    :workshop_id, :plan_id,
    :first_name, :last_name
  )

  validates_presence_of :first_name, :last_name
  #validate :workshop_requires_platinum_plan

  def get_plan
    if self.subscription_id.nil?
      0
    else
      transaction = AuthorizeNet::ARB::Transaction.new(ENV["ANET_ID"], ENV["ANET_KEY"], :gateway => :sandbox)
      response = transaction.get_status(self.subscription_id)
      if response.subscription_status == 'active'
        self.plan_id
      else
        0
      end
    end
  end

  def can_attend_workshop?
    [6, 7].include?(get_plan)
  end

  def get_workshop
    if !workshop_id.nil? and workshop_id != -1
      workshop_id
    else
      nil
    end
  end

  def workshop_requires_platinum_plan
    # Attempting to set workshop
    if workshop_id != nil and workshop_id != -1
      # Not platinum member
      unless can_attend_workshop?
        errors.add :workshop_id, "can't be selected because your plan doesn't include workshop attendance"
      end
    end
  end

end