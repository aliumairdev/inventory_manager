# engines/inventory_manager/app/jobs/inventory_manager/low_stock_alert_job.rb
module InventoryManager
  class LowStockAlertJob < ApplicationJob
    queue_as :default

    def perform
      Product.all.each do |product|
        if product.low_stock?
          # Send email alert or notification
          LowStockMailer.alert(product).deliver_later
        end
      end
    end
  end
end
