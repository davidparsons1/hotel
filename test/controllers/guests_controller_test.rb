require 'test_helper'

class GuestsControllerTest < ActionController::TestCase
  setup do
    @guest = guests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest" do
    assert_difference('Guest.count') do
      post :create, guest: { guest_address: @guest.guest_address, guest_email: @guest.guest_email, guest_first_name: @guest.guest_first_name, guest_last_name: @guest.guest_last_name, guest_phone: @guest.guest_phone, password_digest: @guest.password_digest }
    end

    assert_redirected_to guest_path(assigns(:guest))
  end

  test "should show guest" do
    get :show, id: @guest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest
    assert_response :success
  end

  test "should update guest" do
    patch :update, id: @guest, guest: { guest_address: @guest.guest_address, guest_email: @guest.guest_email, guest_first_name: @guest.guest_first_name, guest_last_name: @guest.guest_last_name, guest_phone: @guest.guest_phone, password_digest: @guest.password_digest }
    assert_redirected_to guest_path(assigns(:guest))
  end

  test "should destroy guest" do
    assert_difference('Guest.count', -1) do
      delete :destroy, id: @guest
    end

    assert_redirected_to guests_path
  end
end
