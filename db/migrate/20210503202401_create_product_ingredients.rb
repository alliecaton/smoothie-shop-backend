class CreateProductIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :product_ingredients do |t|
      t.integer :ingredient_id
      t.integer :product_id

      t.timestamps
    end
  end
end
