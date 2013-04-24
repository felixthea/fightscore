class Score < ActiveRecord::Base
  attr_accessible :score, :round_id, :user_id
  
  belongs_to :round
  belongs_to :user
end
