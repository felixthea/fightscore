class Fight < ActiveRecord::Base
  attr_accessible :date, :fighter_a, :fighter_b
  has_many :rounds
end
