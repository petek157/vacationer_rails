require 'test_helper'

class Admin::FeaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_features_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_features_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_features_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_features_edit_url
    assert_response :success
  end

end
