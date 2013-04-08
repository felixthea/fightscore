class AddColumnToRoundsTable < ActiveRecord::Migration
  def change
    add_column :rounds, :fight_id, :integer
  end 
end
