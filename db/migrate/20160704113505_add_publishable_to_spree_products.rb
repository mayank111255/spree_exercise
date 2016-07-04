class AddPublishableToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :publishable, :boolean, default: true
  end
end
