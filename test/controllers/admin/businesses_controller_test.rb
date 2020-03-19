require 'test_helper'

class Admin::BusinessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_businesses_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_businesses_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_businesses_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_businesses_edit_url
    assert_response :success
  end

end
