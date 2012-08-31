module Refinery
  module Akouo
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Akouo

      engine_name :refinery_akouo

      initializer "register refinerycms_akouos plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "akouos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.akouo_admin_akouos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/akouo/akouo'
          }
          plugin.menu_match = %r{refinery/akouo/akouos(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Akouos)
      end
    end
  end
end
