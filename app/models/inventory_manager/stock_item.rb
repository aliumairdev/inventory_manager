# engines/inventory_manager/app/models/inventory_manager/stock_item.rb
module InventoryManager
  class StockItem < ApplicationRecord
    belongs_to :product
    belongs_to :location

    validates :quantity, presence: true, numericality: {greater_than_or_equal_to: 0}
  end
end
