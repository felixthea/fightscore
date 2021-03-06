class Fight < ActiveRecord::Base
  attr_accessible :date, :numrounds
  has_many :rounds
  has_many :fighters, :through => :rounds
end
