(Refinery.i18n_enabled? ? Refinery::I18n.frontend_locales : [:en]).each do |lang|
  I18n.locale = lang

  if defined?(Refinery::User)
    Refinery::User.all.each do |user|
      if user.plugins.where(:name => 'refinerycms-akouo').blank?
        user.plugins.create(:name => 'refinerycms-akouo',
                            :position => (user.plugins.maximum(:position) || -1) +1)
      end
    end
  end

  pages = [
    ["/akouo", "Akouo"],
    ["/akouo/start", "Start"],
    ["/akouo/vision", "Vision"],
    ["/akouo/last_year", "Last Year"],

    ["/register", "Register"],
    ["/login", "Login"],
    ["/account", "My Account"]
  ]

  pages.each do |this|
    if defined?(Refinery::Page) && Refinery::Page.where(:link_url => this[0]).empty?
      page = Refinery::Page.create(
        :title => this[1],
        :link_url => this[0],
        :deletable => false,
        :parent_id => (page.id if (page == ::Refinery::Page.where(:link_url => "/akouo").first)) || nil,
        :show_in_menu => false,
        :menu_match => "^#{this[0]}(\/|\/.+?|)$"
      )
      Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
        page.parts.create(:title => default_page_part, :body => nil, :position => index)
      end
    end
  end
end
