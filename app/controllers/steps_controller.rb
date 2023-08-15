class StepsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new(step_params)
    @step.recipe = @recipe
    @step.save!
    authorize @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new(step_params)
    @step.delete
    authorize @recipe
  end

  private

  def step_params
    params.require(:step).permit(:content)
  end
end
