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
    ['/akouo', 'Akouo'],
    ['/akouo/start', 'Start'],
    ['/akouo/vision', 'Vision'],
    ['/akouo/to_implement', 'To Implement'],
    ['/akouo/organization_chart', 'Organization Chart'],
    ['/akouo/last_year', 'Last Year'],
    ['/akouo/demand_trend', 'Demand Trend'],
    ['/akouo/demand_trend_chart', 'Demand Trend Chart'],
    ['/akouo/next_year', 'Next Year Projection'],
    ['/akouo/projection_chart', 'Projection Chart'],
    ['/akouo/advertising_plan', 'Advertising Plan'],
    ['/akouo/what_if_analysis', 'What If Analysis'],
    ['/akouo/what_if_projection', 'What If Projection'],
    ['/akouo/call_requirements', 'Call Requirements'],
    ['/akouo/tech_requirements', 'Tech Requirements'],
    ['/akouo/profit_comparison', 'Profit Comparison'],
    ['/akouo/budget_snapshot', 'Budget Snapshot'],
    ['/akouo/month', 'Month-to-month'],

    ['/journeyboard', 'JourneyBoard'],

    ['/register', 'Register'],
    ['/login', 'Login'],
    ['/account', 'My Account'],
    ['/user/password/new', 'Reset Password']
  ]

  pages.each do |this|
    if defined?(Refinery::Page) && Refinery::Page.where(:link_url => this[0]).empty?
      page = Refinery::Page.create(
        :title => this[1],
        :link_url => this[0],
        :deletable => false,
        :parent_id => (page.id if (page = ::Refinery::Page.where(:link_url => '/akouo').first)) || nil,
        :show_in_menu => false,
        :menu_match => "^#{this[0]}(\/|\/.+?|)$"
      )
      Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
        page.parts.create(:title => default_page_part, :body => nil, :position => index)
      end
    end
  end
end
