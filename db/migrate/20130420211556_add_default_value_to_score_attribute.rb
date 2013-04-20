class AddDefaultValueToScoreAttribute < ActiveRecord::Migration
  def up
    change_column :scores, :score, :integer, :default => 10
  end
  
  def down
    change_column :scores, :score, :integer, :default => nil
  end
end
