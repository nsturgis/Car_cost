class Car < ActiveRecord::Base
  has_many :costs, inverse_of: :car


end

