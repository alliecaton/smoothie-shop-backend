class ProductIngredient < ApplicationRecord
    belongs_to :ingredient
    belongs_to :product
end
