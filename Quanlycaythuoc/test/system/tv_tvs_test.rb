require "application_system_test_case"

class TvTvsTest < ApplicationSystemTestCase
  setup do
    @tv_tv = tv_tvs(:one)
  end

  test "visiting the index" do
    visit tv_tvs_url
    assert_selector "h1", text: "Tv tvs"
  end

  test "should create tv tv" do
    visit tv_tvs_url
    click_on "New tv tv"

    fill_in "Sv addr", with: @tv_tv.sv_addr
    fill_in "Sv class", with: @tv_tv.sv_class
    fill_in "Sv dob", with: @tv_tv.sv_dob
    fill_in "Sv", with: @tv_tv.sv_id
    fill_in "Sv name", with: @tv_tv.sv_name
    fill_in "Sv password", with: @tv_tv.sv_password
    click_on "Create Tv tv"

    assert_text "Tv tv was successfully created"
    click_on "Back"
  end

  test "should update Tv tv" do
    visit tv_tv_url(@tv_tv)
    click_on "Edit this tv tv", match: :first

    fill_in "Sv addr", with: @tv_tv.sv_addr
    fill_in "Sv class", with: @tv_tv.sv_class
    fill_in "Sv dob", with: @tv_tv.sv_dob
    fill_in "Sv", with: @tv_tv.sv_id
    fill_in "Sv name", with: @tv_tv.sv_name
    fill_in "Sv password", with: @tv_tv.sv_password
    click_on "Update Tv tv"

    assert_text "Tv tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Tv tv" do
    visit tv_tv_url(@tv_tv)
    click_on "Destroy this tv tv", match: :first

    assert_text "Tv tv was successfully destroyed"
  end
end
