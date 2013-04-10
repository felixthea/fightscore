class Fight < ActiveRecord::Base
  attr_accessible :date
  has_many :fighters
  has_many :rounds, :through => :fighters
end
