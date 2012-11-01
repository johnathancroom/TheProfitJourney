class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_sidebar_workshops, :get_user

protected

  def get_user
    @user = current_refinery_user
  end

  def get_sidebar_workshops
    @sidebar_workshops = ::Refinery::Workshops::Workshop.current.limit(3)
  end

  def redirect?(plan = nil)
    if plan.nil?
      # Redirect if not user
      if !refinery_user?
        redirect_to refinery.akouo_login_path, :alert => 'You must be logged in to access that page.'
      end
    else
      # Redirect if not high enough plan
      if !@user.has_plan?(plan)
        redirect_to refinery.akouo_account_path, :alert => 'You do not have access to that page.'
      end
    end
  end
end
