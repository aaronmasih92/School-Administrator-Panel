require 'test_helper'

class CohortsTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohorts_teacher = cohorts_teachers(:one)
  end

  test "should get index" do
    get cohorts_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_cohorts_teacher_url
    assert_response :success
  end

  test "should create cohorts_teacher" do
    assert_difference('CohortsTeacher.count') do
      post cohorts_teachers_url, params: { cohorts_teacher: { cohort_id: @cohorts_teacher.cohort_id, teacher_id: @cohorts_teacher.teacher_id } }
    end

    assert_redirected_to cohorts_teacher_url(CohortsTeacher.last)
  end

  test "should show cohorts_teacher" do
    get cohorts_teacher_url(@cohorts_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohorts_teacher_url(@cohorts_teacher)
    assert_response :success
  end

  test "should update cohorts_teacher" do
    patch cohorts_teacher_url(@cohorts_teacher), params: { cohorts_teacher: { cohort_id: @cohorts_teacher.cohort_id, teacher_id: @cohorts_teacher.teacher_id } }
    assert_redirected_to cohorts_teacher_url(@cohorts_teacher)
  end

  test "should destroy cohorts_teacher" do
    assert_difference('CohortsTeacher.count', -1) do
      delete cohorts_teacher_url(@cohorts_teacher)
    end

    assert_redirected_to cohorts_teachers_url
  end
end
