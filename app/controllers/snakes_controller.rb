class SnakesController < ApplicationController
  before_action :set_snake, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /snakes
  # GET /snakes.json
  def index
    @current_id = current_user.snake_id
    if current_user.snake_id(params[:id]) == nil
      snake_id == 1
    end
  end

  # GET /snakes/1
  # GET /snakes/1.json
  def show
  end

  def match_red
    match_red
  end
  # GET /snakes/new
  def new
    @snake = Snake.new
    if current_user.snake_id == nil
      @current_id = current_user.snake_id = 1
    else
      @current_id = current_user.snake_id
    end
  end

  # GET /snakes/1/edit
  def edit
    @snake = current_user.snake_id
  end

  # POST /snakes
  # POST /snakes.json
  def create
   color = params[:snake][:color]
   pattern = params[:snake][:pattern]
   current_user.snake_id = Snake.find_by(color: color, pattern: pattern).id


    respond_to do |format|
      if current_user.snake_id
        format.html { redirect_to @snake, notice: 'This is your snake.' }
        format.json { render :show, status: :created, location: @snake }
      else
        format.html { render :new }
        format.json { render json: @snake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snakes/1
  # PATCH/PUT /snakes/1.json
  def update
    respond_to do |format|
      if @snake.update(snake_params)
        format.html { redirect_to @snake, notice: 'Snake was successfully updated.' }
        format.json { render :show, status: :ok, location: @snake }
      else
        format.html { render :edit }
        format.json { render json: @snake.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snake
      @snake = Snake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snake_params
      params.require(:snake).permit(:color, :pattern)
    end
end

