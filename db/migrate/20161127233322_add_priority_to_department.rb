class AddPriorityToDepartment < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :priority, :integer
  end
end
