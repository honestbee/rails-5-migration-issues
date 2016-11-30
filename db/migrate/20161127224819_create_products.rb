class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price_cents
      t.boolean :published
      t.timestamps
      t.references :brand
    end
  end
end
