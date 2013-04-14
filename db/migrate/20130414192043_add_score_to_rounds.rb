class AddScoreToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :score, :integer
  end
end
