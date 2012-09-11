Refinery::AdminController.class_eval do
  before_filter :check_admin_permissions

  # Redirect back if you don't have admin permissions
  def check_admin_permissions
    if !current_refinery_user.has_role?(:backend)
      redirect_to root_path
    end
  end
end