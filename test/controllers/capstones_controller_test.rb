require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capstone = capstones(:one)
  end

  test "should get index" do
    get capstones_url, as: :json
    assert_response :success
  end

  test "should create capstone" do
    assert_difference("Capstone.count") do
      post capstones_url, params: { capstone: { description: @capstone.description, name: @capstone.name, url: @capstone.url } }, as: :json
    end

    assert_response :created
  end

  test "should show capstone" do
    get capstone_url(@capstone), as: :json
    assert_response :success
  end

  test "should update capstone" do
    patch capstone_url(@capstone), params: { capstone: { description: @capstone.description, name: @capstone.name, url: @capstone.url } }, as: :json
    assert_response :success
  end

  test "should destroy capstone" do
    assert_difference("Capstone.count", -1) do
      delete capstone_url(@capstone), as: :json
    end

    assert_response :no_content
  end
end
