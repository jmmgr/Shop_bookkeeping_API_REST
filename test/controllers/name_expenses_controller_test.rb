require 'test_helper'

class NameExpensesControllerTest < ActionController::TestCase
  setup do
    @name_expense = name_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_expense" do
    assert_difference('NameExpense.count') do
      post :create, name_expense: { name: @name_expense.name }
    end

    assert_redirected_to name_expense_path(assigns(:name_expense))
  end

  test "should show name_expense" do
    get :show, id: @name_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_expense
    assert_response :success
  end

  test "should update name_expense" do
    patch :update, id: @name_expense, name_expense: { name: @name_expense.name }
    assert_redirected_to name_expense_path(assigns(:name_expense))
  end

  test "should destroy name_expense" do
    assert_difference('NameExpense.count', -1) do
      delete :destroy, id: @name_expense
    end

    assert_redirected_to name_expenses_path
  end
end
