Refinery::PagesController.class_eval do
  before_filter :initialize_edge, :only => [:show]

  def initialize_edge
    if page.view_template == "edge"
      if refinery_user? && current_refinery_user.has_role?(:edge)
        @stuff = "edge, yo"
      else
        @stuff = "You gotta buy this"
      end
    end
  end
end