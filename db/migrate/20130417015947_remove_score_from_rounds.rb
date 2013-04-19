class RemoveScoreFromRounds < ActiveRecord::Migration
  def up
    remove_column :rounds, :score
  end

  def down
    add_column :rounds, :score, :integer
  end
end
