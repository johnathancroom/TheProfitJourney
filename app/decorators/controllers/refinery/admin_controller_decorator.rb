Refinery::AdminController.class_eval do
  before_filter :get_user, :check_admin_permissions, :get_plans

  def get_user
    @current_user = current_refinery_user
  end

  # Redirect back if you don't have admin permissions
  def check_admin_permissions
    if !@current_user.has_role?(:backend)
      redirect_to root_path
    end
  end

  def get_plans
    @plans = @current_user.plans
  end
end