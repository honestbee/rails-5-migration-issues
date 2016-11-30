class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.boolean :published

      t.timestamps
    end
  end
end
