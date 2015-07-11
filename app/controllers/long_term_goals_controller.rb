class LongTermGoalsController < ApplicationController
  before_action :set_long_term_goal, only: [:show, :edit, :update, :destroy]

  # GET /long_term_goals
  # GET /long_term_goals.json
  def index
    @long_term_goals = LongTermGoal.all
  end

  # GET /long_term_goals/1
  # GET /long_term_goals/1.json
  def show
  end

  # GET /long_term_goals/new
  def new
    @long_term_goal = LongTermGoal.new
  end

  # GET /long_term_goals/1/edit
  def edit
  end

  # POST /long_term_goals
  # POST /long_term_goals.json
  def create
    @long_term_goal = LongTermGoal.new(long_term_goal_params)

    respond_to do |format|
      if @long_term_goal.save
        format.html { redirect_to @long_term_goal, notice: 'Long term goal was successfully created.' }
        format.json { render :show, status: :created, location: @long_term_goal }
      else
        format.html { render :new }
        format.json { render json: @long_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /long_term_goals/1
  # PATCH/PUT /long_term_goals/1.json
  def update
    respond_to do |format|
      if @long_term_goal.update(long_term_goal_params)
        format.html { redirect_to @long_term_goal, notice: 'Long term goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @long_term_goal }
      else
        format.html { render :edit }
        format.json { render json: @long_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /long_term_goals/1
  # DELETE /long_term_goals/1.json
  def destroy
    @long_term_goal.destroy
    respond_to do |format|
      format.html { redirect_to long_term_goals_url, notice: 'Long term goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_long_term_goal
      @long_term_goal = LongTermGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_term_goal_params
      params.require(:long_term_goal).permit(:name, :start_date, :end_date, :is_achieved, :was_adjusted, :on_pace, :category_id)
    end
end
