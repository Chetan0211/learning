class CreateCatelogues < ActiveRecord::Migration[7.1]
  def change
    create_table :catelogues do |t|
      t.string :name, null: false
      t.integer :item_count, null: false, default: 0
      t.references :categories
      t.timestamps
    end
  end
end
