Refinery::User.class_eval do
  has_one :customer, :class_name => 'Refinery::Akouo::Customer'
end