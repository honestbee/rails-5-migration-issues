class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.boolean :active
      t.references :brand
      t.timestamps
    end
  end
end
