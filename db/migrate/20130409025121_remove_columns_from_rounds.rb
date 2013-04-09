class RemoveColumnsFromRounds < ActiveRecord::Migration
  def up
    remove_column :rounds, :fighter_a_score
    remove_column :rounds, :fighter_b_score
  end

  def down
    add_column :rounds, :fighter_a_score, :integer
    add_column :rounds, :fighter_b_score, :integer
  end
end
