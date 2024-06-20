module InventoryManager
  # engines/inventory_manager/app/models/inventory_manager/category.rb
  class Category < ApplicationRecord
    has_many :products

    validates :name, presence: true, uniqueness: true
  end
end
