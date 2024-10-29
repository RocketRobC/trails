require "application_system_test_case"

class TrailsTest < ApplicationSystemTestCase
  setup do
    @trail = trails(:one)
  end

  test "visiting the index" do
    visit trails_url
    assert_selector "h1", text: "Trails"
  end

  test "should create trail" do
    visit trails_url
    click_on "New trail"

    click_on "Create Trail"

    assert_text "Trail was successfully created"
    click_on "Back"
  end

  test "should update Trail" do
    visit trail_url(@trail)
    click_on "Edit this trail", match: :first

    click_on "Update Trail"

    assert_text "Trail was successfully updated"
    click_on "Back"
  end

  test "should destroy Trail" do
    visit trail_url(@trail)
    click_on "Destroy this trail", match: :first

    assert_text "Trail was successfully destroyed"
  end
end
