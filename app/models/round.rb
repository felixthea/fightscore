class Round < ActiveRecord::Base
  attr_accessible :roundname
  has_many :fights, :through => :fighters
end
