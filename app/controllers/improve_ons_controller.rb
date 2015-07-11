class ImproveOnsController < ApplicationController
  before_action :set_improve_on, only: [:show, :edit, :update, :destroy]

  # GET /improve_ons
  # GET /improve_ons.json
  def index
    @improve_ons = ImproveOn.all
  end

  # GET /improve_ons/1
  # GET /improve_ons/1.json
  def show
  end

  # GET /improve_ons/new
  def new
    @improve_on = ImproveOn.new
  end

  # GET /improve_ons/1/edit
  def edit
  end

  # POST /improve_ons
  # POST /improve_ons.json
  def create
    @improve_on = ImproveOn.new(improve_on_params)

    respond_to do |format|
      if @improve_on.save
        format.html { redirect_to @improve_on, notice: 'Improve on was successfully created.' }
        format.json { render :show, status: :created, location: @improve_on }
      else
        format.html { render :new }
        format.json { render json: @improve_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improve_ons/1
  # PATCH/PUT /improve_ons/1.json
  def update
    respond_to do |format|
      if @improve_on.update(improve_on_params)
        format.html { redirect_to @improve_on, notice: 'Improve on was successfully updated.' }
        format.json { render :show, status: :ok, location: @improve_on }
      else
        format.html { render :edit }
        format.json { render json: @improve_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improve_ons/1
  # DELETE /improve_ons/1.json
  def destroy
    @improve_on.destroy
    respond_to do |format|
      format.html { redirect_to improve_ons_url, notice: 'Improve on was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improve_on
      @improve_on = ImproveOn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improve_on_params
      params.require(:improve_on).permit(:description, :daily_goal_id, :long_term_goal_id, :mid_term_goal_id, :weekly_goal_id, :date_of_day, :time, :category_id, :used_before)
    end
end
