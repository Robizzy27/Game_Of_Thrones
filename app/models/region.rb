class Region < ActiveRecord::Base
  has_many :houses
  belongs_to :king
end
