require "application_system_test_case"

class BirthtrackersTest < ApplicationSystemTestCase
  setup do
    @birthtracker = birthtrackers(:one)
  end

  test "visiting the index" do
    visit birthtrackers_url
    assert_selector "h1", text: "Birthtrackers"
  end

  test "creating a Birthtracker" do
    visit birthtrackers_url
    click_on "New Birthtracker"

    fill_in "Birthdate", with: @birthtracker.birthdate
    fill_in "Email", with: @birthtracker.email
    fill_in "First name", with: @birthtracker.first_name
    fill_in "Last name", with: @birthtracker.last_name
    click_on "Create Birthtracker"

    assert_text "Birthtracker was successfully created"
    click_on "Back"
  end

  test "updating a Birthtracker" do
    visit birthtrackers_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @birthtracker.birthdate
    fill_in "Email", with: @birthtracker.email
    fill_in "First name", with: @birthtracker.first_name
    fill_in "Last name", with: @birthtracker.last_name
    click_on "Update Birthtracker"

    assert_text "Birthtracker was successfully updated"
    click_on "Back"
  end

  test "destroying a Birthtracker" do
    visit birthtrackers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Birthtracker was successfully destroyed"
  end
end
