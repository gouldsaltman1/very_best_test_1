class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :dish

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :dish_id, :presence => true

  validates :venue_id, :uniqueness => { :scope => [:user_id, :dish_id], :message => "already bookmarked" }

  validates :venue_id, :presence => true

end
