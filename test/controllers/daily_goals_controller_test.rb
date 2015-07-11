require 'test_helper'

class DailyGoalsControllerTest < ActionController::TestCase
  setup do
    @daily_goal = daily_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_goal" do
    assert_difference('DailyGoal.count') do
      post :create, daily_goal: { category_id: @daily_goal.category_id, date_of_day: @daily_goal.date_of_day, is_current_goal: @daily_goal.is_current_goal, long_term_goal_id: @daily_goal.long_term_goal_id, mid_term_goal_id: @daily_goal.mid_term_goal_id, task: @daily_goal.task, time: @daily_goal.time, weekly_goal_id: @daily_goal.weekly_goal_id }
    end

    assert_redirected_to daily_goal_path(assigns(:daily_goal))
  end

  test "should show daily_goal" do
    get :show, id: @daily_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_goal
    assert_response :success
  end

  test "should update daily_goal" do
    patch :update, id: @daily_goal, daily_goal: { category_id: @daily_goal.category_id, date_of_day: @daily_goal.date_of_day, is_current_goal: @daily_goal.is_current_goal, long_term_goal_id: @daily_goal.long_term_goal_id, mid_term_goal_id: @daily_goal.mid_term_goal_id, task: @daily_goal.task, time: @daily_goal.time, weekly_goal_id: @daily_goal.weekly_goal_id }
    assert_redirected_to daily_goal_path(assigns(:daily_goal))
  end

  test "should destroy daily_goal" do
    assert_difference('DailyGoal.count', -1) do
      delete :destroy, id: @daily_goal
    end

    assert_redirected_to daily_goals_path
  end
end
