class RoutesController < ApplicationController
  # index, show, new, edit, create, update, destroy
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def show
    # render plain: params.inspect
  end

  def new
    @route = Route.new
  end

  def edit
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to @route
    else
      render 'new'
    end
    # render plain: params[:article].inspect
  end

  def update
    if @route.update(route_params)
      redirect_to @route
    else
      render 'edit'
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name)
  end
end
