class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.save!
    authorize @recipe
    redirect_to new_recipe_preparation_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
  end

  def index
    @recipes = Recipe.all
    authorize @recipes
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.preparations.destroy_all
    @recipe.steps.destroy_all
    @recipe.delete
    authorize @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :number_of_people, :diet)
  end
end
