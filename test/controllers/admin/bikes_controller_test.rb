require "test_helper"

class Admin::BikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_bike = admin_bikes(:one)
  end

  test "should get index" do
    get admin_bikes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_bike_url
    assert_response :success
  end

  test "should create admin_bike" do
    assert_difference("Admin::Bike.count") do
      post admin_bikes_url, params: { admin_bike: { category: @admin_bike.category, name: @admin_bike.name, price: @admin_bike.price, stock: @admin_bike.stock } }
    end

    assert_redirected_to admin_bike_url(Admin::Bike.last)
  end

  test "should show admin_bike" do
    get admin_bike_url(@admin_bike)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_bike_url(@admin_bike)
    assert_response :success
  end

  test "should update admin_bike" do
    patch admin_bike_url(@admin_bike), params: { admin_bike: { category: @admin_bike.category, name: @admin_bike.name, price: @admin_bike.price, stock: @admin_bike.stock } }
    assert_redirected_to admin_bike_url(@admin_bike)
  end

  test "should destroy admin_bike" do
    assert_difference("Admin::Bike.count", -1) do
      delete admin_bike_url(@admin_bike)
    end

    assert_redirected_to admin_bikes_url
  end
end
