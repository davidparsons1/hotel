require 'test_helper'

class RoomTypesControllerTest < ActionController::TestCase
  setup do
    @room_type = room_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_type" do
    assert_difference('RoomType.count') do
      post :create, room_type: { breakfast: @room_type.breakfast, hotel_id: @room_type.hotel_id, image: @room_type.image, room_type_id: @room_type.room_type_id }
    end

    assert_redirected_to room_type_path(assigns(:room_type))
  end

  test "should show room_type" do
    get :show, id: @room_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_type
    assert_response :success
  end

  test "should update room_type" do
    patch :update, id: @room_type, room_type: { breakfast: @room_type.breakfast, hotel_id: @room_type.hotel_id, image: @room_type.image, room_type_id: @room_type.room_type_id }
    assert_redirected_to room_type_path(assigns(:room_type))
  end

  test "should destroy room_type" do
    assert_difference('RoomType.count', -1) do
      delete :destroy, id: @room_type
    end

    assert_redirected_to room_types_path
  end
end