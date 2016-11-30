class TranslateBrands < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Brand.create_translation_table!({
                                           :name => :string
                                       })
      end

      dir.down do
        Brand.drop_translation_table! :migrate_data => true
      end
    end
  end
end
