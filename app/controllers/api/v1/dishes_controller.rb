class DishesController < ApplicationController
  before_action :set_menu, only: %i[index new create]
  before_action :set_dish, only: %i[show edit update destroy]

  # GET /dishes
  def index
    @dishes = @menu.dishes
  end

  # GET /dishes/1
  def show; end

  # GET /dishes/new
  def new
    @dish = JsonEntry.new
  end

  # GET /dishes/1/edit
  def edit; end

  # POST /dishes
  def create
    @dish = @menu.dishes.new(dish_params)

    if @dish.save
      redirect_to edit_dish_path(@dish), notice: "Json entry was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /dishes/1
  def update
    if @dish.update(dish_params)
      redirect_to @dish, notice: "Json entry was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /dishes/1
  def destroy
    @dish.destroy
    redirect_to dishes_url, notice: "Json entry was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dish
    @dish = Dish.find(params[:id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  # Only allow a trusted parameter "white list" through.
  def dish_params
    params.require(:dish).permit(:menu_id, :description, :name, :price, :type)
  end
end
