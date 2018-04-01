class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

  validates :neighborhood_id, :uniqueness => { :scope => [:address, :venue_name] }

  validates :venue_name, :uniqueness => { :scope => [:address] }

  validates :venue_name, :presence => true

end
