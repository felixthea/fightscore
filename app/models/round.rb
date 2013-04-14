class Round < ActiveRecord::Base
  attr_accessible :roundname, :score
  belongs_to :fighter
  belongs_to :fight
end
