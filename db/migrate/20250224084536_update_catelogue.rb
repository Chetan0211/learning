class UpdateCatelogue < ActiveRecord::Migration[7.1]
  def change
    remove_column :catelogues, :categories_id
    add_reference :catelogues, :category, foreign_key: true
  end
end
