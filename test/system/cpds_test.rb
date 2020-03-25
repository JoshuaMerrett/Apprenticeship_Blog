require "application_system_test_case"

class CpdsTest < ApplicationSystemTestCase
  setup do
    @cpd = cpds(:one)
  end

  test "visiting the index" do
    visit cpds_url
    assert_selector "h1", text: "Cpds"
  end

  test "creating a Cpd" do
    visit cpds_url
    click_on "New Cpd"

    click_on "Create Cpd"

    assert_text "Cpd was successfully created"
    click_on "Back"
  end

  test "updating a Cpd" do
    visit cpds_url
    click_on "Edit", match: :first

    click_on "Update Cpd"

    assert_text "Cpd was successfully updated"
    click_on "Back"
  end

  test "destroying a Cpd" do
    visit cpds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cpd was successfully destroyed"
  end
end
