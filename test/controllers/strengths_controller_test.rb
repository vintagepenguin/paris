require 'test_helper'

class StrengthsControllerTest < ActionController::TestCase
  setup do
    @strength = strengths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strengths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strength" do
    assert_difference('Strength.count') do
      post :create, strength: { category_id: @strength.category_id, daily_goal_id: @strength.daily_goal_id, date_of_day: @strength.date_of_day, description: @strength.description, long_term_goal_id: @strength.long_term_goal_id, mid_term_goal_id: @strength.mid_term_goal_id, time: @strength.time, used_before: @strength.used_before, weekly_goal_id: @strength.weekly_goal_id }
    end

    assert_redirected_to strength_path(assigns(:strength))
  end

  test "should show strength" do
    get :show, id: @strength
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strength
    assert_response :success
  end

  test "should update strength" do
    patch :update, id: @strength, strength: { category_id: @strength.category_id, daily_goal_id: @strength.daily_goal_id, date_of_day: @strength.date_of_day, description: @strength.description, long_term_goal_id: @strength.long_term_goal_id, mid_term_goal_id: @strength.mid_term_goal_id, time: @strength.time, used_before: @strength.used_before, weekly_goal_id: @strength.weekly_goal_id }
    assert_redirected_to strength_path(assigns(:strength))
  end

  test "should destroy strength" do
    assert_difference('Strength.count', -1) do
      delete :destroy, id: @strength
    end

    assert_redirected_to strengths_path
  end
end
