# engines/inventory_manager/lib/inventory_manager/engine.rb
module InventoryManager
  class Engine < ::Rails::Engine
    isolate_namespace InventoryManager

    initializer "inventory_manager.add_middleware" do |app|
      app.middleware.use ActsAsTenant::Middleware::RequestStore
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: "spec/factories"
    end
  end
end
