require "application_system_test_case"

class Admin::BikesTest < ApplicationSystemTestCase
  setup do
    @admin_bike = admin_bikes(:one)
  end

  test "visiting the index" do
    visit admin_bikes_url
    assert_selector "h1", text: "Bikes"
  end

  test "should create bike" do
    visit admin_bikes_url
    click_on "New bike"

    fill_in "Category", with: @admin_bike.category
    fill_in "Name", with: @admin_bike.name
    fill_in "Price", with: @admin_bike.price
    fill_in "Stock", with: @admin_bike.stock
    click_on "Create Bike"

    assert_text "Bike was successfully created"
    click_on "Back"
  end

  test "should update Bike" do
    visit admin_bike_url(@admin_bike)
    click_on "Edit this bike", match: :first

    fill_in "Category", with: @admin_bike.category
    fill_in "Name", with: @admin_bike.name
    fill_in "Price", with: @admin_bike.price
    fill_in "Stock", with: @admin_bike.stock
    click_on "Update Bike"

    assert_text "Bike was successfully updated"
    click_on "Back"
  end

  test "should destroy Bike" do
    visit admin_bike_url(@admin_bike)
    click_on "Destroy this bike", match: :first

    assert_text "Bike was successfully destroyed"
  end
end
