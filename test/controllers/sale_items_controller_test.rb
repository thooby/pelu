require 'test_helper'

class SaleItemsControllerTest < ActionController::TestCase
  setup do
    @sale_item = sale_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_item" do
    assert_difference('SaleItem.count') do
      post :create, sale_item: { description: @sale_item.description, discount_percent: @sale_item.discount_percent, item_cost_price: @sale_item.item_cost_price, item_id: @sale_item.item_id, item_unit_price: @sale_item.item_unit_price, line: @sale_item.line, quantity-purchased: @sale_item.quantity-purchased, sale_id: @sale_item.sale_id }
    end

    assert_redirected_to sale_item_path(assigns(:sale_item))
  end

  test "should show sale_item" do
    get :show, id: @sale_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_item
    assert_response :success
  end

  test "should update sale_item" do
    patch :update, id: @sale_item, sale_item: { description: @sale_item.description, discount_percent: @sale_item.discount_percent, item_cost_price: @sale_item.item_cost_price, item_id: @sale_item.item_id, item_unit_price: @sale_item.item_unit_price, line: @sale_item.line, quantity-purchased: @sale_item.quantity-purchased, sale_id: @sale_item.sale_id }
    assert_redirected_to sale_item_path(assigns(:sale_item))
  end

  test "should destroy sale_item" do
    assert_difference('SaleItem.count', -1) do
      delete :destroy, id: @sale_item
    end

    assert_redirected_to sale_items_path
  end
end
