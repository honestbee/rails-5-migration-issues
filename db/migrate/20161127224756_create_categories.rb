class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.boolean :active
      t.references :department
      t.timestamps
    end
  end
end
