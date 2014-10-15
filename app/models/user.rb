class User < ActiveRecord::Base
  has_many :cars
  has_many :costs
  has_many :maintenances
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
