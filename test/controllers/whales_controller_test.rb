require "test_helper"

class WhalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whale = whales(:one)
  end

  test "should get index" do
    get whales_url
    assert_response :success
  end

  test "should get new" do
    get new_whale_url
    assert_response :success
  end

  test "should create whale" do
    assert_difference("Whale.count") do
      post whales_url, params: { whale: { facts: @whale.facts, name: @whale.name } }
    end

    assert_redirected_to whale_url(Whale.last)
  end

  test "should show whale" do
    get whale_url(@whale)
    assert_response :success
  end

  test "should get edit" do
    get edit_whale_url(@whale)
    assert_response :success
  end

  test "should update whale" do
    patch whale_url(@whale), params: { whale: { facts: @whale.facts, name: @whale.name } }
    assert_redirected_to whale_url(@whale)
  end

  test "should destroy whale" do
    assert_difference("Whale.count", -1) do
      delete whale_url(@whale)
    end

    assert_redirected_to whales_url
  end
end
