Refinery::User.class_eval do

  has_many :profit_centers, :class_name => 'Refinery::Akouo::ProfitCenter'
  belongs_to :workshop, :class_name => 'Refinery::Workshops::Workshop'
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
  has_many :journeyboard_budgets, :class_name => 'Refinery::Akouo::JourneyboardBudget'
  has_many :employees, :class_name => 'Refinery::Akouo::JourneyboardEmployee'
  has_many :journeyboard_csr_entries, :class_name => 'Refinery::Akouo::JourneyboardCsrEntry'

  attr_accessible(
    :workshop_id, :plan_id, :plan_override, :workshop_override,
    :first_name, :last_name,
    :profit_centers_attributes
  )

  accepts_nested_attributes_for :profit_centers

  validates_presence_of :first_name, :last_name
  #validate :workshop_requires_platinum_plan

  def get_plan
    if plan_override
      plan_id
    elsif subscription_id.nil?
      0
    else
      transaction = AuthorizeNet::ARB::Transaction.new(ENV['ANET_ID'], ENV['ANET_KEY'], :gateway => ((ENV['ANET_SANDBOX'].nil?) ? :production : :sandbox))
      response = transaction.get_status(self.subscription_id)
      # Lookup successful and subscription active
      if response.message_code == 'I00001' and response.subscription_status == 'active'
        plan_id
      else
        0
      end
    end
  end

  def has_plan?(plan)
    @plans = plans

    case plan
    when :bronze
      true if get_plan >= 0
    when :silver
      true if get_plan >= 2
    when :gold
      true if get_plan >= 4
    when :platinum
      true if get_plan >= 6
    when :workshop
      true if can_attend_workshop?
    else
      false
    end
  end

  def plans
    [
      # Name, amount, frequency (by month)
      ['Bronze (Free)', 0, 0],
      ['', 0, 0],
      ['Silver ($39.99/month)', 39.99, 1],
      ['Silver ($450/year)', 450, 12],
      ['Gold ($149.99/month)', 149.99, 1],
      ['Gold ($1600/year)', 1600, 12],
      ['Platinum ($249.99/month)', 249.99, 1],
      ['Platinum ($2700/year)', 2700, 12]
    ]
  end

  def can_attend_workshop?
    has_plan?(:platinum) or workshop_override
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