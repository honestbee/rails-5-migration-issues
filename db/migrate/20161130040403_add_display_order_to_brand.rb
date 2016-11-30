class AddDisplayOrderToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :display_order, :integer
  end
end
