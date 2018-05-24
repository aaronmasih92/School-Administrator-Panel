require "application_system_test_case"

class CohortsStudentsTest < ApplicationSystemTestCase
  setup do
    @cohorts_student = cohorts_students(:one)
  end

  test "visiting the index" do
    visit cohorts_students_url
    assert_selector "h1", text: "Cohorts Students"
  end

  test "creating a Cohorts student" do
    visit cohorts_students_url
    click_on "New Cohorts Student"

    fill_in "Cohort", with: @cohorts_student.cohort_id
    fill_in "Student", with: @cohorts_student.student_id
    click_on "Create Cohorts student"

    assert_text "Cohorts student was successfully created"
    click_on "Back"
  end

  test "updating a Cohorts student" do
    visit cohorts_students_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @cohorts_student.cohort_id
    fill_in "Student", with: @cohorts_student.student_id
    click_on "Update Cohorts student"

    assert_text "Cohorts student was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohorts student" do
    visit cohorts_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohorts student was successfully destroyed"
  end
end
