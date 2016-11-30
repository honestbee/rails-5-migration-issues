class AddDisplayOrderToBrand < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :display_order, :integer
  end
end
