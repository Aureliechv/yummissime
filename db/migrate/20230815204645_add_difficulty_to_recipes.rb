class AddDifficultyToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :difficulty, :string
  end
end
