require "application_system_test_case"

class CohortsTeachersTest < ApplicationSystemTestCase
  setup do
    @cohorts_teacher = cohorts_teachers(:one)
  end

  test "visiting the index" do
    visit cohorts_teachers_url
    assert_selector "h1", text: "Cohorts Teachers"
  end

  test "creating a Cohorts teacher" do
    visit cohorts_teachers_url
    click_on "New Cohorts Teacher"

    fill_in "Cohort", with: @cohorts_teacher.cohort_id
    fill_in "Teacher", with: @cohorts_teacher.teacher_id
    click_on "Create Cohorts teacher"

    assert_text "Cohorts teacher was successfully created"
    click_on "Back"
  end

  test "updating a Cohorts teacher" do
    visit cohorts_teachers_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @cohorts_teacher.cohort_id
    fill_in "Teacher", with: @cohorts_teacher.teacher_id
    click_on "Update Cohorts teacher"

    assert_text "Cohorts teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohorts teacher" do
    visit cohorts_teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohorts teacher was successfully destroyed"
  end
end
