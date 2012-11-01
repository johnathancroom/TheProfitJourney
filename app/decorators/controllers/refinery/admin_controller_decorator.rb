Refinery::AdminController.class_eval do
  before_filter :check_admin_permissions, :get_plans

  # Redirect back if you don't have admin permissions
  def check_admin_permissions
    if !current_refinery_user.has_role?(:backend)
      redirect_to root_path
    end
  end

  def get_plans
    @plans = [
      # Name, amount, frequency (by month)
      ["Bronze (Free)", 0, 0],
      ["", 0, 0],
      ["Silver ($39.99/month)", 39.99, 1],
      ["Silver ($450/year)", 450, 12],
      ["Gold ($149.99/month)", 149.99, 1],
      ["Gold ($1600/year)", 1600, 12],
      ["Platinum ($249.99/month)", 249.99, 1],
      ["Platinum ($2700/year)", 2700, 12]
    ]
  end
end