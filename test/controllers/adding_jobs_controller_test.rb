require "test_helper"

class AddingJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adding_job = adding_jobs(:one)
  end

  test "should get index" do
    get adding_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_adding_job_url
    assert_response :success
  end

  test "should create adding_job" do
    assert_difference("AddingJob.count") do
      post adding_jobs_url, params: { adding_job: { description: @adding_job.description, title: @adding_job.title } }
    end

    assert_redirected_to adding_job_url(AddingJob.last)
  end

  test "should show adding_job" do
    get adding_job_url(@adding_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_adding_job_url(@adding_job)
    assert_response :success
  end

  test "should update adding_job" do
    patch adding_job_url(@adding_job), params: { adding_job: { description: @adding_job.description, title: @adding_job.title } }
    assert_redirected_to adding_job_url(@adding_job)
  end

  test "should destroy adding_job" do
    assert_difference("AddingJob.count", -1) do
      delete adding_job_url(@adding_job)
    end

    assert_redirected_to adding_jobs_url
  end
end
