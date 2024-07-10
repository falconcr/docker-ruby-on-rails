require "application_system_test_case"

class WhalesTest < ApplicationSystemTestCase
  setup do
    @whale = whales(:one)
  end

  test "visiting the index" do
    visit whales_url
    assert_selector "h1", text: "Whales"
  end

  test "should create whale" do
    visit whales_url
    click_on "New whale"

    fill_in "Facts", with: @whale.facts
    fill_in "Name", with: @whale.name
    click_on "Create Whale"

    assert_text "Whale was successfully created"
    click_on "Back"
  end

  test "should update Whale" do
    visit whale_url(@whale)
    click_on "Edit this whale", match: :first

    fill_in "Facts", with: @whale.facts
    fill_in "Name", with: @whale.name
    click_on "Update Whale"

    assert_text "Whale was successfully updated"
    click_on "Back"
  end

  test "should destroy Whale" do
    visit whale_url(@whale)
    click_on "Destroy this whale", match: :first

    assert_text "Whale was successfully destroyed"
  end
end
