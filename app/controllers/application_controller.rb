class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_sidebar_workshops

protected

  def get_sidebar_workshops
    @sidebar_workshops = ::Refinery::Workshops::Workshop.where("date > ?", Time.now.beginning_of_day).order('date ASC').limit(3)
  end

  def redirect?
    if !refinery_user?
      redirect_to refinery.akouo_login_path, :notice => "You must be logged in to access that page."
    end
  end
end
