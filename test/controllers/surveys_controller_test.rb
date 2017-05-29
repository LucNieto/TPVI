require 'test_helper'

class SurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get surveys_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_url
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post surveys_url, params: { survey: { q10: @survey.q10, q1: @survey.q1, q2: @survey.q2, q3: @survey.q3, q4: @survey.q4, q5: @survey.q5, q6: @survey.q6, q7: @survey.q7, q8: @survey.q8, q9: @survey.q9, teacher_id: @survey.teacher_id, user_id: @survey.user_id } }
    end

    assert_redirected_to survey_url(Survey.last)
  end

  test "should show survey" do
    get survey_url(@survey)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_url(@survey)
    assert_response :success
  end

  test "should update survey" do
    patch survey_url(@survey), params: { survey: { q10: @survey.q10, q1: @survey.q1, q2: @survey.q2, q3: @survey.q3, q4: @survey.q4, q5: @survey.q5, q6: @survey.q6, q7: @survey.q7, q8: @survey.q8, q9: @survey.q9, teacher_id: @survey.teacher_id, user_id: @survey.user_id } }
    assert_redirected_to survey_url(@survey)
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete survey_url(@survey)
    end

    assert_redirected_to surveys_url
  end
end
