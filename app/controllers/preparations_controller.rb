class PreparationsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @preparation = Preparation.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @preparation = Preparation.new(prepapration_params)
    @preparation.recipe = @recipe
    @preparation.ingredient = @ingredient
    @preparation.save!
    authorize @preparation
  end

  def destroy
    @preparation = Preparation.find(params[:preparation_id])
    @preparation.delete
    authorize @preparation
  end

  private

  def preparation_params
    params.require(:preparation).permit(:quantity)
  end
end
