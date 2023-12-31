class CreatePreparations < ActiveRecord::Migration[7.0]
  def change
    create_table :preparations do |t|
      t.float :quantity
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
