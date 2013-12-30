require 'test_helper'

class SalePaymentsControllerTest < ActionController::TestCase
  setup do
    @sale_payment = sale_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_payment" do
    assert_difference('SalePayment.count') do
      post :create, sale_payment: { payment_amount: @sale_payment.payment_amount, payment_type: @sale_payment.payment_type, sale_id: @sale_payment.sale_id }
    end

    assert_redirected_to sale_payment_path(assigns(:sale_payment))
  end

  test "should show sale_payment" do
    get :show, id: @sale_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_payment
    assert_response :success
  end

  test "should update sale_payment" do
    patch :update, id: @sale_payment, sale_payment: { payment_amount: @sale_payment.payment_amount, payment_type: @sale_payment.payment_type, sale_id: @sale_payment.sale_id }
    assert_redirected_to sale_payment_path(assigns(:sale_payment))
  end

  test "should destroy sale_payment" do
    assert_difference('SalePayment.count', -1) do
      delete :destroy, id: @sale_payment
    end

    assert_redirected_to sale_payments_path
  end
end
