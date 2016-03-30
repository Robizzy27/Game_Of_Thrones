class House < ActiveRecord::Base
  belongs_to :region
  has_many :characters
  # NHO: would consider looking into adding an option to this association, like `dependent: :destroy`
end
