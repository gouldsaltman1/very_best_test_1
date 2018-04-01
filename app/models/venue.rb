class Venue < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :venue_name, :uniqueness => { :scope => [:address] }

  validates :venue_name, :presence => true

end
