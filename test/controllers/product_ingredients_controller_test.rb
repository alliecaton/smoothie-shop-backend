require "test_helper"

class ProductIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_ingredient = product_ingredients(:one)
  end

  test "should get index" do
    get product_ingredients_url, as: :json
    assert_response :success
  end

  test "should create product_ingredient" do
    assert_difference('ProductIngredient.count') do
      post product_ingredients_url, params: { product_ingredient: { ingredient_id: @product_ingredient.ingredient_id, product_id: @product_ingredient.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_ingredient" do
    get product_ingredient_url(@product_ingredient), as: :json
    assert_response :success
  end

  test "should update product_ingredient" do
    patch product_ingredient_url(@product_ingredient), params: { product_ingredient: { ingredient_id: @product_ingredient.ingredient_id, product_id: @product_ingredient.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_ingredient" do
    assert_difference('ProductIngredient.count', -1) do
      delete product_ingredient_url(@product_ingredient), as: :json
    end

    assert_response 204
  end
end
