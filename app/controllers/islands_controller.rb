class IslandsController < ApplicationController
  def index
  end

  def show
    @island = Island.find(params[:id])
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)
    redirect_to island_path(@island)
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :location, :price)
  end
end
