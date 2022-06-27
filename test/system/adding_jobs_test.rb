require "application_system_test_case"

class AddingJobsTest < ApplicationSystemTestCase
  setup do
    @adding_job = adding_jobs(:one)
  end

  test "visiting the index" do
    visit adding_jobs_url
    assert_selector "h1", text: "Adding jobs"
  end

  test "should create adding job" do
    visit adding_jobs_url
    click_on "New adding job"

    fill_in "Description", with: @adding_job.description
    fill_in "Title", with: @adding_job.title
    click_on "Create Adding job"

    assert_text "Adding job was successfully created"
    click_on "Back"
  end

  test "should update Adding job" do
    visit adding_job_url(@adding_job)
    click_on "Edit this adding job", match: :first

    fill_in "Description", with: @adding_job.description
    fill_in "Title", with: @adding_job.title
    click_on "Update Adding job"

    assert_text "Adding job was successfully updated"
    click_on "Back"
  end

  test "should destroy Adding job" do
    visit adding_job_url(@adding_job)
    click_on "Destroy this adding job", match: :first

    assert_text "Adding job was successfully destroyed"
  end
end
