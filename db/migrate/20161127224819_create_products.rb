class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :price_cents
      t.boolean :published
      t.timestamps
      t.references :brand
    end
  end
end
