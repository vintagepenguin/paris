class MidTermGoalsController < ApplicationController
  before_action :set_mid_term_goal, only: [:show, :edit, :update, :destroy]

  # GET /mid_term_goals
  # GET /mid_term_goals.json
  def index
    @mid_term_goals = MidTermGoal.all
  end

  # GET /mid_term_goals/1
  # GET /mid_term_goals/1.json
  def show
  end

  # GET /mid_term_goals/new
  def new
    @mid_term_goal = MidTermGoal.new
  end

  # GET /mid_term_goals/1/edit
  def edit
  end

  # POST /mid_term_goals
  # POST /mid_term_goals.json
  def create
    @mid_term_goal = MidTermGoal.new(mid_term_goal_params)

    respond_to do |format|
      if @mid_term_goal.save
        format.html { redirect_to @mid_term_goal, notice: 'Mid term goal was successfully created.' }
        format.json { render :show, status: :created, location: @mid_term_goal }
      else
        format.html { render :new }
        format.json { render json: @mid_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mid_term_goals/1
  # PATCH/PUT /mid_term_goals/1.json
  def update
    respond_to do |format|
      if @mid_term_goal.update(mid_term_goal_params)
        format.html { redirect_to @mid_term_goal, notice: 'Mid term goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @mid_term_goal }
      else
        format.html { render :edit }
        format.json { render json: @mid_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mid_term_goals/1
  # DELETE /mid_term_goals/1.json
  def destroy
    @mid_term_goal.destroy
    respond_to do |format|
      format.html { redirect_to mid_term_goals_url, notice: 'Mid term goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mid_term_goal
      @mid_term_goal = MidTermGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mid_term_goal_params
      params.require(:mid_term_goal).permit(:name, :end_date, :is_achieved, :was_adjusted, :on_pace, :long_term_goal_id, :is_current_goal)
    end
end
