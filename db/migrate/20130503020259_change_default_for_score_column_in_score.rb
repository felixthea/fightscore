class ChangeDefaultForScoreColumnInScore < ActiveRecord::Migration
  def change
    change_column :scores, :score, :integer, :default => 0
  end
end
