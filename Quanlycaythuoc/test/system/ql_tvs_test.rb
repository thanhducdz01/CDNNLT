require "application_system_test_case"

class QlTvsTest < ApplicationSystemTestCase
  setup do
    @ql_tv = ql_tvs(:one)
  end

  test "visiting the index" do
    visit ql_tvs_url
    assert_selector "h1", text: "Ql tvs"
  end

  test "should create ql tv" do
    visit ql_tvs_url
    click_on "New ql tv"

    fill_in "Sv addr", with: @ql_tv.sv_addr
    fill_in "Sv class", with: @ql_tv.sv_class
    fill_in "Sv dob", with: @ql_tv.sv_dob
    fill_in "Sv", with: @ql_tv.sv_id
    fill_in "Sv name", with: @ql_tv.sv_name
    fill_in "Sv password", with: @ql_tv.sv_password
    click_on "Create Ql tv"

    assert_text "Ql tv was successfully created"
    click_on "Back"
  end

  test "should update Ql tv" do
    visit ql_tv_url(@ql_tv)
    click_on "Edit this ql tv", match: :first

    fill_in "Sv addr", with: @ql_tv.sv_addr
    fill_in "Sv class", with: @ql_tv.sv_class
    fill_in "Sv dob", with: @ql_tv.sv_dob
    fill_in "Sv", with: @ql_tv.sv_id
    fill_in "Sv name", with: @ql_tv.sv_name
    fill_in "Sv password", with: @ql_tv.sv_password
    click_on "Update Ql tv"

    assert_text "Ql tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Ql tv" do
    visit ql_tv_url(@ql_tv)
    click_on "Destroy this ql tv", match: :first

    assert_text "Ql tv was successfully destroyed"
  end
end
