class Cuisine < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :dishes
  has_many :favorites, :through => :dishes
end
