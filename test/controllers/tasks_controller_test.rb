require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_index_url
    assert_response :success
  end

  test "should get new" do
    get tasks_new_url
    assert_response :success
  end

  test "should get edit" do
    get tasks_edit_url
    assert_response :success
  end

  test "should get search" do
    get tasks_search_url
    assert_response :success
  end

  test "should get result" do
    get tasks_result_url
    assert_response :success
  end

end
