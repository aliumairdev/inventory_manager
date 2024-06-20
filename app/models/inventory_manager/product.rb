# engines/inventory_manager/app/models/inventory_manager/product.rb
module InventoryManager
  class Product < ApplicationRecord
    belongs_to :category
    has_many :stock_items
    has_many :order_items

    validates :name, presence: true, uniqueness: true
    validates :sku, presence: true, uniqueness: true
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}

    def total_stock
      stock_items.sum(:quantity)
    end

    def low_stock?
      total_stock < reorder_threshold
    end
  end
end
