module InventoryManager
  # engines/inventory_manager/app/models/inventory_manager/order.rb
  class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_items

    enum status: {pending: 0, processing: 1, shipped: 2, delivered: 3, cancelled: 4}

    def total_amount
      order_items.sum { |item| item.quantity * item.unit_price }
    end
  end
end
