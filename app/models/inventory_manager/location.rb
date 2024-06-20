module InventoryManager
  # engines/inventory_manager/app/models/inventory_manager/location.rb
  class Location < ApplicationRecord
    has_many :stock_items

    validates :name, presence: true, uniqueness: true
  end
end
