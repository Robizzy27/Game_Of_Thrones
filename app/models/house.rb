class House < ActiveRecord::Base
  belongs_to :region
  has_many :characters
end
