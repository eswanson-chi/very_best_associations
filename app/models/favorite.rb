class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => { :scope => [ :dish_id, :venue_id ] }
  validates :dish_id, :presence => true
  validates :venue_id, :presence => true

  belongs_to :venue
  belongs_to :user
  belongs_to :dish
end
