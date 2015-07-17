class FirstAidsController < ApplicationController
  before_action :set_first_aid, only: [:show, :edit, :update, :destroy]

  # GET /first_aids
  # GET /first_aids.json
  def index
    @first_aids = FirstAid.all
  end

  # GET /first_aids/1
  # GET /first_aids/1.json
  def show
  end

  # GET /first_aids/new
  def new
    @first_aid = FirstAid.new
  end

  # GET /first_aids/1/edit
  def edit
  end

  # POST /first_aids
  # POST /first_aids.json
  def create
    @first_aid = FirstAid.new(first_aid_params)

    respond_to do |format|
      if @first_aid.save
        format.html { redirect_to @first_aid, notice: 'First aid was successfully created.' }
        format.json { render :show, status: :created, location: @first_aid }
      else
        format.html { render :new }
        format.json { render json: @first_aid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_aids/1
  # PATCH/PUT /first_aids/1.json
  def update
    respond_to do |format|
      if @first_aid.update(first_aid_params)
        format.html { redirect_to @first_aid, notice: 'First aid was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_aid }
      else
        format.html { render :edit }
        format.json { render json: @first_aid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_aids/1
  # DELETE /first_aids/1.json
  def destroy
    @first_aid.destroy
    respond_to do |format|
      format.html { redirect_to first_aids_url, notice: 'First aid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_aid
      @first_aid = FirstAid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_aid_params
      params[:first_aid]
    end
end
