# engines/inventory_manager/app/mailers/inventory_manager/low_stock_mailer.rb
module InventoryManager
  class LowStockMailer < ApplicationMailer
    def alert(product)
      @product = product
      mail(to: "manager@example.com", subject: "Low Stock Alert: #{product.name}")
    end
  end
end
