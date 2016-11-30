class AddPriorityToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :priority, :integer
  end
end
