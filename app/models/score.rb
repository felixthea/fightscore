class Score < ActiveRecord::Base
  attr_accessible :score
  
  belongs_to :round
  belongs_to :user
end
