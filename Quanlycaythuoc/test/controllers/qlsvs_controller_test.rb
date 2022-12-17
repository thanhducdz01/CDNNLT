require "test_helper"

class QlsvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qlsv = qlsvs(:one)
  end

  test "should get index" do
    get qlsvs_url
    assert_response :success
  end

  test "should get new" do
    get new_qlsv_url
    assert_response :success
  end

  test "should create qlsv" do
    assert_difference("Qlsv.count") do
      post qlsvs_url, params: { qlsv: { addr: @qlsv.addr, class: @qlsv.class, id: @qlsv.id, name: @qlsv.name, points: @qlsv.points } }
    end

    assert_redirected_to qlsv_url(Qlsv.last)
  end

  test "should show qlsv" do
    get qlsv_url(@qlsv)
    assert_response :success
  end

  test "should get edit" do
    get edit_qlsv_url(@qlsv)
    assert_response :success
  end

  test "should update qlsv" do
    patch qlsv_url(@qlsv), params: { qlsv: { addr: @qlsv.addr, class: @qlsv.class, id: @qlsv.id, name: @qlsv.name, points: @qlsv.points } }
    assert_redirected_to qlsv_url(@qlsv)
  end

  test "should destroy qlsv" do
    assert_difference("Qlsv.count", -1) do
      delete qlsv_url(@qlsv)
    end

    assert_redirected_to qlsvs_url
  end
end
