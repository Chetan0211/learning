class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :value, null: false
      t.timestamps

      t.index :value, unique: true
    end
  end
end
