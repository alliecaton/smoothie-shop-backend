class Product < ApplicationRecord
    has_many :product_ingredients
    has_many :ingredients, through: :product_ingredients


    def self.add_ingredients(ids, product)
        ids.each do |id|
            ingredient = Ingredient.find_by(id: id)
            product.ingredients << ingredient
            product.save
        end
        product
    end


end
