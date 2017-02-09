class ChangeSerializedColumn < ActiveRecord::Migration[5.0]
  def up
    change_column(
        :product_translations, :description,
        'json USING CAST(description AS json)'
    )
  end

  def down
    change_column(
        :product_translations, :description,
        'text USING CAST(description AS text)'
    )
  end
end
