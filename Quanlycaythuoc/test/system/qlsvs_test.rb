require "application_system_test_case"

class QlsvsTest < ApplicationSystemTestCase
  setup do
    @qlsv = qlsvs(:one)
  end

  test "visiting the index" do
    visit qlsvs_url
    assert_selector "h1", text: "Qlsvs"
  end

  test "should create qlsv" do
    visit qlsvs_url
    click_on "New qlsv"

    fill_in "Addr", with: @qlsv.addr
    fill_in "Class", with: @qlsv.class
    fill_in "Id", with: @qlsv.id
    fill_in "Name", with: @qlsv.name
    fill_in "Points", with: @qlsv.points
    click_on "Create Qlsv"

    assert_text "Qlsv was successfully created"
    click_on "Back"
  end

  test "should update Qlsv" do
    visit qlsv_url(@qlsv)
    click_on "Edit this qlsv", match: :first

    fill_in "Addr", with: @qlsv.addr
    fill_in "Class", with: @qlsv.class
    fill_in "Id", with: @qlsv.id
    fill_in "Name", with: @qlsv.name
    fill_in "Points", with: @qlsv.points
    click_on "Update Qlsv"

    assert_text "Qlsv was successfully updated"
    click_on "Back"
  end

  test "should destroy Qlsv" do
    visit qlsv_url(@qlsv)
    click_on "Destroy this qlsv", match: :first

    assert_text "Qlsv was successfully destroyed"
  end
end
