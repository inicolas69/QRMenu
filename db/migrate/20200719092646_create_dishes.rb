class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.references :menu, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
