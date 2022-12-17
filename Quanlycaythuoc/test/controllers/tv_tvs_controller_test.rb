require "test_helper"

class TvTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_tv = tv_tvs(:one)
  end

  test "should get index" do
    get tv_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_tv_url
    assert_response :success
  end

  test "should create tv_tv" do
    assert_difference("TvTv.count") do
      post tv_tvs_url, params: { tv_tv: { sv_addr: @tv_tv.sv_addr, sv_class: @tv_tv.sv_class, sv_dob: @tv_tv.sv_dob, sv_id: @tv_tv.sv_id, sv_name: @tv_tv.sv_name, sv_password: @tv_tv.sv_password } }
    end

    assert_redirected_to tv_tv_url(TvTv.last)
  end

  test "should show tv_tv" do
    get tv_tv_url(@tv_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_tv_url(@tv_tv)
    assert_response :success
  end

  test "should update tv_tv" do
    patch tv_tv_url(@tv_tv), params: { tv_tv: { sv_addr: @tv_tv.sv_addr, sv_class: @tv_tv.sv_class, sv_dob: @tv_tv.sv_dob, sv_id: @tv_tv.sv_id, sv_name: @tv_tv.sv_name, sv_password: @tv_tv.sv_password } }
    assert_redirected_to tv_tv_url(@tv_tv)
  end

  test "should destroy tv_tv" do
    assert_difference("TvTv.count", -1) do
      delete tv_tv_url(@tv_tv)
    end

    assert_redirected_to tv_tvs_url
  end
end
