require "application_system_test_case"

class KadaisTest < ApplicationSystemTestCase
  setup do
    @kadai = kadais(:one)
  end

  test "visiting the index" do
    visit kadais_url
    assert_selector "h1", text: "Kadais"
  end

  test "creating a Kadai" do
    visit kadais_url
    click_on "New Kadai"

    fill_in "Body", with: @kadai.body
    fill_in "Title", with: @kadai.title
    click_on "Create Kadai"

    assert_text "Kadai was successfully created"
    click_on "Back"
  end

  test "updating a Kadai" do
    visit kadais_url
    click_on "Edit", match: :first

    fill_in "Body", with: @kadai.body
    fill_in "Title", with: @kadai.title
    click_on "Update Kadai"

    assert_text "Kadai was successfully updated"
    click_on "Back"
  end

  test "destroying a Kadai" do
    visit kadais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kadai was successfully destroyed"
  end
end
