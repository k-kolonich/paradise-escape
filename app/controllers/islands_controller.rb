class IslandsController < ApplicationController
  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user_id = current_user.id
    if @island.save
      redirect_to island_path(@island)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :location, :price)
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
