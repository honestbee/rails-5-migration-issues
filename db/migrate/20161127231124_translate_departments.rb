class TranslateDepartments < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Department.create_translation_table!({
                                            :name => :string
                                        })
      end

      dir.down do
        Department.drop_translation_table! :migrate_data => true
      end
    end
  end
end
