class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :dish_name, :uniqueness => true

  validates :dish_name, :presence => true

end
