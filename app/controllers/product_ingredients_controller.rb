class ProductIngredientsController < ApplicationController
  before_action :set_product_ingredient, only: [:show, :update, :destroy]

  # GET /product_ingredients
  def index
    @product_ingredients = ProductIngredient.all

    render json: @product_ingredients
  end

  # GET /product_ingredients/1
  def show
    render json: @product_ingredient
  end

  # POST /product_ingredients
  def create
    @product_ingredient = ProductIngredient.new(product_ingredient_params)

    if @product_ingredient.save
      render json: @product_ingredient, status: :created, location: @product_ingredient
    else
      render json: @product_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_ingredients/1
  def update
    if @product_ingredient.update(product_ingredient_params)
      render json: @product_ingredient
    else
      render json: @product_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_ingredients/1
  def destroy
    @product_ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_ingredient
      @product_ingredient = ProductIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_ingredient_params
      params.require(:product_ingredient).permit(:ingredient_id, :product_id)
    end
end
