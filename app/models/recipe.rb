class Recipe < ApplicationRecord
  DIFFICULTY = ["très facile", "facile", "moyen", "avancé"]
  DIET = ["vegan", "vegetarienne", "carnivore"]

  belongs_to :user
  has_many :preparations
  has_many :steps
end
