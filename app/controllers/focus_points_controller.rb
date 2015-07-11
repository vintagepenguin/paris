class FocusPointsController < ApplicationController
  before_action :set_focus_point, only: [:show, :edit, :update, :destroy]

  # GET /focus_points
  # GET /focus_points.json
  def index
    @focus_points = FocusPoint.all
  end

  # GET /focus_points/1
  # GET /focus_points/1.json
  def show
  end

  # GET /focus_points/new
  def new
    @focus_point = FocusPoint.new
  end

  # GET /focus_points/1/edit
  def edit
  end

  # POST /focus_points
  # POST /focus_points.json
  def create
    @focus_point = FocusPoint.new(focus_point_params)

    respond_to do |format|
      if @focus_point.save
        format.html { redirect_to @focus_point, notice: 'Focus point was successfully created.' }
        format.json { render :show, status: :created, location: @focus_point }
      else
        format.html { render :new }
        format.json { render json: @focus_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focus_points/1
  # PATCH/PUT /focus_points/1.json
  def update
    respond_to do |format|
      if @focus_point.update(focus_point_params)
        format.html { redirect_to @focus_point, notice: 'Focus point was successfully updated.' }
        format.json { render :show, status: :ok, location: @focus_point }
      else
        format.html { render :edit }
        format.json { render json: @focus_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focus_points/1
  # DELETE /focus_points/1.json
  def destroy
    @focus_point.destroy
    respond_to do |format|
      format.html { redirect_to focus_points_url, notice: 'Focus point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focus_point
      @focus_point = FocusPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def focus_point_params
      params.require(:focus_point).permit(:description, :daily_goal_id, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :used_before)
    end
end
