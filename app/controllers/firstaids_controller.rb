class FirstaidsController < ApplicationController
  before_action :set_firstaid, only: [:show, :edit, :update, :destroy]

  # GET /firstaids
  # GET /firstaids.json
  def index
    @firstaids = Firstaid.all
  end

  # GET /firstaids/1
  # GET /firstaids/1.json
  def show
  end

  # GET /firstaids/new
  def new
    @firstaid = Firstaid.new
  end

  # GET /firstaids/1/edit
  def edit
  end

  # POST /firstaids
  # POST /firstaids.json
  def create
    @firstaid = Firstaid.new(firstaid_params)

    respond_to do |format|
      if @firstaid.save
        format.html { redirect_to @firstaid, notice: 'Firstaid was successfully created.' }
        format.json { render :show, status: :created, location: @firstaid }
      else
        format.html { render :new }
        format.json { render json: @firstaid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firstaids/1
  # PATCH/PUT /firstaids/1.json
  def update
    respond_to do |format|
      if @firstaid.update(firstaid_params)
        format.html { redirect_to @firstaid, notice: 'Firstaid was successfully updated.' }
        format.json { render :show, status: :ok, location: @firstaid }
      else
        format.html { render :edit }
        format.json { render json: @firstaid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firstaids/1
  # DELETE /firstaids/1.json
  def destroy
    @firstaid.destroy
    respond_to do |format|
      format.html { redirect_to firstaids_url, notice: 'Firstaid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firstaid
      @firstaid = Firstaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firstaid_params
      params.require(:firstaid).permit(:emergency_spider, :snake_bite, :spider_bite, :emergency_snake)
    end
end
