module Refinery
  module Rides
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Rides

      engine_name :refinery_rides

      initializer "register refinerycms_rides plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "rides"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.rides_admin_rides_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/rides/ride',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Rides)
      end
    end
  end
end
