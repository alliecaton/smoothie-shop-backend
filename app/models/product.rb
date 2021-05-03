class Product < ApplicationRecord
    has_many :product_ingredients
    has_many :ingredients, through: :product_ingredients


    def self.add_ingredients(items, order)
        items.each do |item|
            product = Product.create
            item[:ingredient_ids].each do |id|
                ingredient = Ingredient.find_by(id: id)
                product.ingredients << ingredient
                product.order_id = order.id
                product.save
            end
        end
    end


end
