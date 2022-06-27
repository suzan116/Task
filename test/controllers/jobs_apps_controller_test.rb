require "test_helper"

class JobsAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobs_app = jobs_apps(:one)
  end

  test "should get index" do
    get jobs_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_jobs_app_url
    assert_response :success
  end

  test "should create jobs_app" do
    assert_difference("JobsApp.count") do
      post jobs_apps_url, params: { jobs_app: { description: @jobs_app.description, status: @jobs_app.status, title: @jobs_app.title } }
    end

    assert_redirected_to jobs_app_url(JobsApp.last)
  end

  test "should show jobs_app" do
    get jobs_app_url(@jobs_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobs_app_url(@jobs_app)
    assert_response :success
  end

  test "should update jobs_app" do
    patch jobs_app_url(@jobs_app), params: { jobs_app: { description: @jobs_app.description, status: @jobs_app.status, title: @jobs_app.title } }
    assert_redirected_to jobs_app_url(@jobs_app)
  end

  test "should destroy jobs_app" do
    assert_difference("JobsApp.count", -1) do
      delete jobs_app_url(@jobs_app)
    end

    assert_redirected_to jobs_apps_url
  end
end
