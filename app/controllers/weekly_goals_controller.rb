class WeeklyGoalsController < ApplicationController
  before_action :set_weekly_goal, only: [:show, :edit, :update, :destroy]

  # GET /weekly_goals
  # GET /weekly_goals.json
  def index
    @weekly_goals = WeeklyGoal.all
  end

  # GET /weekly_goals/1
  # GET /weekly_goals/1.json
  def show
  end

  # GET /weekly_goals/new
  def new
    @weekly_goal = WeeklyGoal.new
  end

  # GET /weekly_goals/1/edit
  def edit
  end

  # POST /weekly_goals
  # POST /weekly_goals.json
  def create
    @weekly_goal = WeeklyGoal.new(weekly_goal_params)

    respond_to do |format|
      if @weekly_goal.save
        format.html { redirect_to @weekly_goal, notice: 'Weekly goal was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_goal }
      else
        format.html { render :new }
        format.json { render json: @weekly_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_goals/1
  # PATCH/PUT /weekly_goals/1.json
  def update
    respond_to do |format|
      if @weekly_goal.update(weekly_goal_params)
        format.html { redirect_to @weekly_goal, notice: 'Weekly goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_goal }
      else
        format.html { render :edit }
        format.json { render json: @weekly_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_goals/1
  # DELETE /weekly_goals/1.json
  def destroy
    @weekly_goal.destroy
    respond_to do |format|
      format.html { redirect_to weekly_goals_url, notice: 'Weekly goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_goal
      @weekly_goal = WeeklyGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_goal_params
      params.require(:weekly_goal).permit(:name, :start_date, :end_date, :is_achieved, :was_adjusted, :on_pace, :long_term_goal_id, :mid_term_goal_id, :is_current_goal)
    end
end
