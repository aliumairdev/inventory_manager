module InventoryManager
  # engines/inventory_manager/app/models/inventory_manager/customer.rb
  class Customer < ApplicationRecord
    has_many :orders

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  end
end
