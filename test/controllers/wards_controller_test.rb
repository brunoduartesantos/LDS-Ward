require 'test_helper'

class WardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ward = wards(:one)
  end

  test "should get index" do
    get wards_url
    assert_response :success
  end

  test "should get new" do
    get new_ward_url
    assert_response :success
  end

  test "should create ward" do
    assert_difference('Ward.count') do
      post wards_url, params: { ward: { name: @ward.name } }
    end

    assert_redirected_to ward_url(Ward.last)
  end

  test "should show ward" do
    get ward_url(@ward)
    assert_response :success
  end

  test "should get edit" do
    get edit_ward_url(@ward)
    assert_response :success
  end

  test "should update ward" do
    patch ward_url(@ward), params: { ward: { name: @ward.name } }
    assert_redirected_to ward_url(@ward)
  end

  test "should destroy ward" do
    assert_difference('Ward.count', -1) do
      delete ward_url(@ward)
    end

    assert_redirected_to wards_url
  end
end
