class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    @recipe.user = current_user
  end

  def update?
    @recipe.user = current_user
  end

  def destroy?
    @recipe.user = current_user
  end

  def show?
    true
  end
end
