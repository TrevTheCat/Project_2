require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { Lists: @item.Lists, list_eight: @item.list_eight, list_five: @item.list_five, list_four: @item.list_four, list_nine: @item.list_nine, list_one: @item.list_one, list_seven: @item.list_seven, list_six: @item.list_six, list_ten: @item.list_ten, list_three: @item.list_three, list_two: @item.list_two }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { Lists: @item.Lists, list_eight: @item.list_eight, list_five: @item.list_five, list_four: @item.list_four, list_nine: @item.list_nine, list_one: @item.list_one, list_seven: @item.list_seven, list_six: @item.list_six, list_ten: @item.list_ten, list_three: @item.list_three, list_two: @item.list_two }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
