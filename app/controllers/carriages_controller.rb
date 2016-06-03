class CarriagesController < ApplicationController
  before_action :set_carriage, only: [:show, :edit, :update, :destroy]

  # GET /carriages
  def index
    @carriages = Carriage.all
  end

  # GET /carriages/1
  def show
  end

  # GET /carriages/new
  def new
    @carriage = Carriage.new
  end

  # GET /carriages/1/edit
  def edit
  end

  # POST /carriages
  def create
    @carriage = Carriage.new(carriage_params)

    if @carriage.save
      redirect_to @carriage, notice: 'Carriage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /carriages/1
  def update
    if @carriage.update(carriage_params)
      redirect_to @carriage, notice: 'Carriage was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /carriages/1
  def destroy
    @carriage.destroy
    redirect_to carriages_path, notice: 'Carriage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carriage
      @carriage = Carriage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carriage_params
      params.require(:carriage).permit(:train_id, :category, :upper, :lower)
    end
end
