class Round < ActiveRecord::Base
  attr_accessible :fighter_a_score, :fighter_b_score
  belongs_to :fight
end
