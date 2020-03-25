require 'test_helper'

class CpdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpd = cpds(:one)
  end

  test "should get index" do
    get cpds_url
    assert_response :success
  end

  test "should get new" do
    get new_cpd_url
    assert_response :success
  end

  test "should create cpd" do
    assert_difference('Cpd.count') do
      post cpds_url, params: { cpd: {  } }
    end

    assert_redirected_to cpd_url(Cpd.last)
  end

  test "should show cpd" do
    get cpd_url(@cpd)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpd_url(@cpd)
    assert_response :success
  end

  test "should update cpd" do
    patch cpd_url(@cpd), params: { cpd: {  } }
    assert_redirected_to cpd_url(@cpd)
  end

  test "should destroy cpd" do
    assert_difference('Cpd.count', -1) do
      delete cpd_url(@cpd)
    end

    assert_redirected_to cpds_url
  end
end
