require 'test_helper'

class JobTrackersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_trackers_index_url
    assert_response :success
  end

  test "should get show" do
    get job_trackers_show_url
    assert_response :success
  end

  test "should get edit" do
    get job_trackers_edit_url
    assert_response :success
  end

  test "should get new" do
    get job_trackers_new_url
    assert_response :success
  end

end
