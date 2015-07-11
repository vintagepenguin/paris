require 'test_helper'

class MidTermGoalsControllerTest < ActionController::TestCase
  setup do
    @mid_term_goal = mid_term_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mid_term_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mid_term_goal" do
    assert_difference('MidTermGoal.count') do
      post :create, mid_term_goal: { end_date: @mid_term_goal.end_date, is_achieved: @mid_term_goal.is_achieved, is_current_goal: @mid_term_goal.is_current_goal, long_term_goal_id: @mid_term_goal.long_term_goal_id, name: @mid_term_goal.name, on_pace: @mid_term_goal.on_pace, was_adjusted: @mid_term_goal.was_adjusted }
    end

    assert_redirected_to mid_term_goal_path(assigns(:mid_term_goal))
  end

  test "should show mid_term_goal" do
    get :show, id: @mid_term_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mid_term_goal
    assert_response :success
  end

  test "should update mid_term_goal" do
    patch :update, id: @mid_term_goal, mid_term_goal: { end_date: @mid_term_goal.end_date, is_achieved: @mid_term_goal.is_achieved, is_current_goal: @mid_term_goal.is_current_goal, long_term_goal_id: @mid_term_goal.long_term_goal_id, name: @mid_term_goal.name, on_pace: @mid_term_goal.on_pace, was_adjusted: @mid_term_goal.was_adjusted }
    assert_redirected_to mid_term_goal_path(assigns(:mid_term_goal))
  end

  test "should destroy mid_term_goal" do
    assert_difference('MidTermGoal.count', -1) do
      delete :destroy, id: @mid_term_goal
    end

    assert_redirected_to mid_term_goals_path
  end
end
