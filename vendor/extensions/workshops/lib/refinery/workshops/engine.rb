module Refinery
  module Workshops
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Workshops

      engine_name :refinery_workshops

      initializer "register refinerycms_workshops plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "workshops"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.workshops_admin_workshops_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/workshops/workshop'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Workshops)
      end
    end
  end
end
