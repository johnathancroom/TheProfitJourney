module Refinery
  module Akouo
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Akouo

      engine_name :refinery_akouo

      initializer "register refinerycms_akouo plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "akouo"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.akouo_admin_home_index_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/akouo'
          }
          plugin.menu_match = %r{refinery/akouo(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Akouos)
      end
    end
  end
end
