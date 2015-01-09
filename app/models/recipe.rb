class Recipe < ActiveRecord::Base
  attr_accessible :category, :description, :ingredients, :price, :title
  
end
