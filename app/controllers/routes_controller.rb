class RoutesController < ApplicationController
  # index, show, new, edit, create, update, destroy
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
    # render plain: params.inspect
  end

  def new
    @route = Route.new
  end

  def edit
    @route = Route.find(params[:id])
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
    @route = Route.find(params[:id])
    if @route.update(route_params)
      redirect_to @route
    else
      render 'edit'
    end
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy

    redirect_to routes_path
  end

  private

  def route_params
    params.require(:route).permit(:name)
  end
end
