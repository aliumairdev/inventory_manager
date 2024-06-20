InventoryManager::Engine.routes.draw do
  root to: "dashboard#index"

  resources :products
  resources :categories
  resources :stock_items
  resources :locations
  resources :orders
  resources :customers
end
