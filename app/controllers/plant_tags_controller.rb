class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @plant = Plant.find(params[:plant_id])
    @tags.each do |tag|
      @plant_tag = PlantTag.new(tag: tag, plant: @plant)
      @plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:plant, :tag)
  end
end
