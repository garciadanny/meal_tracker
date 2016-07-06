class CreateMealItems < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_items do |t|
      t.belongs_to :meal, index: true
      t.string :name
      t.float :quantity
      t.string :quantity_type
      t.float :calories
      t.float :protein
      t.float :fat
      t.float :carbs
      t.float :fiber

      t.timestamps
    end
  end
end
