require "application_system_test_case"

class CcasTest < ApplicationSystemTestCase
  setup do
    @cca = ccas(:one)
  end

  test "visiting the index" do
    visit ccas_url
    assert_selector "h1", text: "Ccas"
  end

  test "creating a Cca" do
    visit ccas_url
    click_on "New Cca"

    fill_in "Description", with: @cca.description
    fill_in "Name", with: @cca.name
    click_on "Create Cca"

    assert_text "Cca was successfully created"
    click_on "Back"
  end

  test "updating a Cca" do
    visit ccas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cca.description
    fill_in "Name", with: @cca.name
    click_on "Update Cca"

    assert_text "Cca was successfully updated"
    click_on "Back"
  end

  test "destroying a Cca" do
    visit ccas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cca was successfully destroyed"
  end
end
