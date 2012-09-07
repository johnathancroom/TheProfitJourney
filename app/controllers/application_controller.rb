class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_sidebar_workshops

  def get_sidebar_workshops
    @sidebar_workshops = ::Refinery::Workshops::Workshop.where("date > ?", Time.now.beginning_of_day).order('date ASC').limit(3)
  end
end
