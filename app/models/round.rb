class Round < ActiveRecord::Base
  attr_accessible :roundname
  belongs_to :fighter
  belongs_to :fight
end
