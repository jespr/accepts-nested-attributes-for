require "application_system_test_case"

class DivesTest < ApplicationSystemTestCase
  setup do
    @dive = dives(:one)
  end

  test "visiting the index" do
    visit dives_url
    assert_selector "h1", text: "Dives"
  end

  test "should create dive" do
    visit dives_url
    click_on "New dive"

    fill_in "Date", with: @dive.date
    fill_in "Dive location", with: @dive.dive_location_id
    fill_in "Diver", with: @dive.diver
    click_on "Create Dive"

    assert_text "Dive was successfully created"
    click_on "Back"
  end

  test "should update Dive" do
    visit dive_url(@dive)
    click_on "Edit this dive", match: :first

    fill_in "Date", with: @dive.date
    fill_in "Dive location", with: @dive.dive_location_id
    fill_in "Diver", with: @dive.diver
    click_on "Update Dive"

    assert_text "Dive was successfully updated"
    click_on "Back"
  end

  test "should destroy Dive" do
    visit dive_url(@dive)
    click_on "Destroy this dive", match: :first

    assert_text "Dive was successfully destroyed"
  end
end
