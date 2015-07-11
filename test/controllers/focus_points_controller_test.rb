require 'test_helper'

class FocusPointsControllerTest < ActionController::TestCase
  setup do
    @focus_point = focus_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:focus_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create focus_point" do
    assert_difference('FocusPoint.count') do
      post :create, focus_point: { category_id: @focus_point.category_id, daily_goal_id: @focus_point.daily_goal_id, date_of_day: @focus_point.date_of_day, description: @focus_point.description, long_term_goal_id: @focus_point.long_term_goal_id, mid_term_goal_id: @focus_point.mid_term_goal_id, time: @focus_point.time, used_before: @focus_point.used_before, weekly_goal_id: @focus_point.weekly_goal_id }
    end

    assert_redirected_to focus_point_path(assigns(:focus_point))
  end

  test "should show focus_point" do
    get :show, id: @focus_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @focus_point
    assert_response :success
  end

  test "should update focus_point" do
    patch :update, id: @focus_point, focus_point: { category_id: @focus_point.category_id, daily_goal_id: @focus_point.daily_goal_id, date_of_day: @focus_point.date_of_day, description: @focus_point.description, long_term_goal_id: @focus_point.long_term_goal_id, mid_term_goal_id: @focus_point.mid_term_goal_id, time: @focus_point.time, used_before: @focus_point.used_before, weekly_goal_id: @focus_point.weekly_goal_id }
    assert_redirected_to focus_point_path(assigns(:focus_point))
  end

  test "should destroy focus_point" do
    assert_difference('FocusPoint.count', -1) do
      delete :destroy, id: @focus_point
    end

    assert_redirected_to focus_points_path
  end
end
