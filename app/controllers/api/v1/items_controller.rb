class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def update
    render json: Item.update(item_params)
  end

  def destroy
    render json: Item.find(params[:id]).destroy
  end

  private

  def item_params
    params.require(:item).permit(:id, :name, :description, :image_url)
  end
end
