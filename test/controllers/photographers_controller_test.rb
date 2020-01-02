require 'test_helper'

class PhotographersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photographers_new_url
    assert_response :success
  end

  test "should get index" do
    get photographers_index_url
    assert_response :success
  end

  test "should get edit" do
    get photographers_edit_url
    assert_response :success
  end

  test "should get show" do
    get photographers_show_url
    assert_response :success
  end

  test "should get delete" do
    get photographers_delete_url
    assert_response :success
  end

end
