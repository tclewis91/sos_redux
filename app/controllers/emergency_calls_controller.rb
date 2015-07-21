class EmergencyCallsController < ApplicationController
  before_action :set_emergency_call, only: [:show, :edit, :update, :destroy]

  # GET /emergency_calls
  # GET /emergency_calls.json
  def index
    @emergency_calls = EmergencyCall.all
  end

  # GET /emergency_calls/1
  # GET /emergency_calls/1.json
  def show
  end

  # GET /emergency_calls/new
  def new
    @emergency_call = EmergencyCall.new
  end

  # GET /emergency_calls/1/edit
  def edit
  end

  # POST /emergency_calls
  # POST /emergency_calls.json
  def create
    @emergency_call = EmergencyCall.new(emergency_call_params)

    respond_to do |format|
      if @emergency_call.save
        format.html { redirect_to @emergency_call, notice: 'Emergency call was successfully created.' }
        format.json { render :show, status: :created, location: @emergency_call }
      else
        format.html { render :new }
        format.json { render json: @emergency_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergency_calls/1
  # PATCH/PUT /emergency_calls/1.json
  def update
    respond_to do |format|
      if @emergency_call.update(emergency_call_params)
        format.html { redirect_to @emergency_call, notice: 'Emergency call was successfully updated.' }
        format.json { render :show, status: :ok, location: @emergency_call }
      else
        format.html { render :edit }
        format.json { render json: @emergency_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_calls/1
  # DELETE /emergency_calls/1.json
  def destroy
    @emergency_call.destroy
    respond_to do |format|
      format.html { redirect_to emergency_calls_url, notice: 'Emergency call was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_call
      @emergency_call = EmergencyCall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emergency_call_params
      params.require(:emergency_call).permit(:phone, :phone_number)
    end
end
