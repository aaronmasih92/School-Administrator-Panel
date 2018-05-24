require 'test_helper'

class CohortsStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohorts_student = cohorts_students(:one)
  end

  test "should get index" do
    get cohorts_students_url
    assert_response :success
  end

  test "should get new" do
    get new_cohorts_student_url
    assert_response :success
  end

  test "should create cohorts_student" do
    assert_difference('CohortsStudent.count') do
      post cohorts_students_url, params: { cohorts_student: { cohort_id: @cohorts_student.cohort_id, student_id: @cohorts_student.student_id } }
    end

    assert_redirected_to cohorts_student_url(CohortsStudent.last)
  end

  test "should show cohorts_student" do
    get cohorts_student_url(@cohorts_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohorts_student_url(@cohorts_student)
    assert_response :success
  end

  test "should update cohorts_student" do
    patch cohorts_student_url(@cohorts_student), params: { cohorts_student: { cohort_id: @cohorts_student.cohort_id, student_id: @cohorts_student.student_id } }
    assert_redirected_to cohorts_student_url(@cohorts_student)
  end

  test "should destroy cohorts_student" do
    assert_difference('CohortsStudent.count', -1) do
      delete cohorts_student_url(@cohorts_student)
    end

    assert_redirected_to cohorts_students_url
  end
end
