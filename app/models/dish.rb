class Dish < ActiveRecord::Base
  validates :name, :uniqueness => { :scope => :cuisine_id }

  belongs_to :cuisine
  has_many :favorites
end
