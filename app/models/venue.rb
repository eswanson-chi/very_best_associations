class Venue < ActiveRecord::Base
  validates :name, :uniqueness => { :scope => :address }

  belongs_to :neighborhood
  has_many :favorites
end
