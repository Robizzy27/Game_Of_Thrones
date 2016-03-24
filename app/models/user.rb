class User < ActiveRecord::Base
  has_many :kings
  has_many :regions
  has_many :houses
  has_many :characters
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
