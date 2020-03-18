require 'test_helper'

class Admin::SlidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sliders_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_sliders_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_sliders_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sliders_edit_url
    assert_response :success
  end

end
