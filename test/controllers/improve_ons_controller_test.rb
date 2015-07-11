require 'test_helper'

class ImproveOnsControllerTest < ActionController::TestCase
  setup do
    @improve_on = improve_ons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:improve_ons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create improve_on" do
    assert_difference('ImproveOn.count') do
      post :create, improve_on: { category_id: @improve_on.category_id, daily_goal_id: @improve_on.daily_goal_id, date_of_day: @improve_on.date_of_day, description: @improve_on.description, long_term_goal_id: @improve_on.long_term_goal_id, mid_term_goal_id: @improve_on.mid_term_goal_id, time: @improve_on.time, used_before: @improve_on.used_before, weekly_goal_id: @improve_on.weekly_goal_id }
    end

    assert_redirected_to improve_on_path(assigns(:improve_on))
  end

  test "should show improve_on" do
    get :show, id: @improve_on
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @improve_on
    assert_response :success
  end

  test "should update improve_on" do
    patch :update, id: @improve_on, improve_on: { category_id: @improve_on.category_id, daily_goal_id: @improve_on.daily_goal_id, date_of_day: @improve_on.date_of_day, description: @improve_on.description, long_term_goal_id: @improve_on.long_term_goal_id, mid_term_goal_id: @improve_on.mid_term_goal_id, time: @improve_on.time, used_before: @improve_on.used_before, weekly_goal_id: @improve_on.weekly_goal_id }
    assert_redirected_to improve_on_path(assigns(:improve_on))
  end

  test "should destroy improve_on" do
    assert_difference('ImproveOn.count', -1) do
      delete :destroy, id: @improve_on
    end

    assert_redirected_to improve_ons_path
  end
end
