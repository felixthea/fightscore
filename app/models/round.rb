class Round < ActiveRecord::Base
  attr_accessible :roundname, :score
  belongs_to :fighter
  belongs_to :fight
  has_one :score
  has_many :users, :through => :scores
end
