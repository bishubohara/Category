class Recipe < ActiveRecord::Base
  attr_accessible :category, :description, :ingredients, :price, :title
  has_and_belongs_to_many :cat_types
end
