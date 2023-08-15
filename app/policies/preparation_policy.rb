class PreparationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    @recipe.user = current_user
  end

  def create?
    @recipe.user = current_user
  end

  def destroy?
    @recipe.user = current_user
  end
end
