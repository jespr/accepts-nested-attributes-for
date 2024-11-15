require "test_helper"

class DivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dive = dives(:one)
  end

  test "should get index" do
    get dives_url
    assert_response :success
  end

  test "should get new" do
    get new_dive_url
    assert_response :success
  end

  test "should create dive" do
    assert_difference("Dive.count") do
      post dives_url, params: { dive: { date: @dive.date, dive_location_id: @dive.dive_location_id, diver: @dive.diver } }
    end

    assert_redirected_to dive_url(Dive.last)
  end

  test "should show dive" do
    get dive_url(@dive)
    assert_response :success
  end

  test "should get edit" do
    get edit_dive_url(@dive)
    assert_response :success
  end

  test "should update dive" do
    patch dive_url(@dive), params: { dive: { date: @dive.date, dive_location_id: @dive.dive_location_id, diver: @dive.diver } }
    assert_redirected_to dive_url(@dive)
  end

  test "should destroy dive" do
    assert_difference("Dive.count", -1) do
      delete dive_url(@dive)
    end

    assert_redirected_to dives_url
  end
end
