class CatType < ActiveRecord::Base
  has_and_belongs_to_many :recipe
  attr_accessible :name, :origin, :speciality
end
