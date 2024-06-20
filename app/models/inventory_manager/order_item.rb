module InventoryManager
  # engines/inventory_manager/app/models/inventory_manager/order_item.rb
  class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    validates :quantity, presence: true, numericality: {greater_than: 0}
    validates :unit_price, presence: true, numericality: {greater_than_or_equal_to: 0}
  end
end
