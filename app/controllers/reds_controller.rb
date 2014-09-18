class RedsController < ApplicationController
  before_action :set_red, only: [:show, :edit, :update, :destroy]

  # GET /reds
  # GET /reds.json
  def index
    @reds = Red.all
  end

  # GET /reds/1
  # GET /reds/1.json
  def show
  end

  # GET /reds/new
  def new
    @red = Red.new
  end

  # GET /reds/1/edit
  def edit
  end

  # POST /reds
  # POST /reds.json
  def create
    @red = Red.new(red_params)

    respond_to do |format|
      if @red.save
        format.html { redirect_to @red, notice: 'Red was successfully created.' }
        format.json { render :show, status: :created, location: @red }
      else
        format.html { render :new }
        format.json { render json: @red.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reds/1
  # PATCH/PUT /reds/1.json
  def update
    respond_to do |format|
      if @red.update(red_params)
        format.html { redirect_to @red, notice: 'Red was successfully updated.' }
        format.json { render :show, status: :ok, location: @red }
      else
        format.html { render :edit }
        format.json { render json: @red.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reds/1
  # DELETE /reds/1.json
  def destroy
    @red.destroy
    respond_to do |format|
      format.html { redirect_to reds_url, notice: 'Red was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_red
      @red = Red.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def red_params
      params.require(:red).permit(:isp_id, :password, :wps_pin)
    end
end
