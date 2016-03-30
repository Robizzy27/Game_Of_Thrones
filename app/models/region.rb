class Region < ActiveRecord::Base
  # NHO: would consider looking into adding an option to this association, like `dependent: :destroy`
  # so that if any region is destroyed, it deletes all the associated houses, etc.
  has_many :houses
  belongs_to :king
end
