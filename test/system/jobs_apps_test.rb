require "application_system_test_case"

class JobsAppsTest < ApplicationSystemTestCase
  setup do
    @jobs_app = jobs_apps(:one)
  end

  test "visiting the index" do
    visit jobs_apps_url
    assert_selector "h1", text: "Jobs apps"
  end

  test "should create jobs app" do
    visit jobs_apps_url
    click_on "New jobs app"

    fill_in "Description", with: @jobs_app.description
    fill_in "Status", with: @jobs_app.status
    fill_in "Title", with: @jobs_app.title
    click_on "Create Jobs app"

    assert_text "Jobs app was successfully created"
    click_on "Back"
  end

  test "should update Jobs app" do
    visit jobs_app_url(@jobs_app)
    click_on "Edit this jobs app", match: :first

    fill_in "Description", with: @jobs_app.description
    fill_in "Status", with: @jobs_app.status
    fill_in "Title", with: @jobs_app.title
    click_on "Update Jobs app"

    assert_text "Jobs app was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobs app" do
    visit jobs_app_url(@jobs_app)
    click_on "Destroy this jobs app", match: :first

    assert_text "Jobs app was successfully destroyed"
  end
end
