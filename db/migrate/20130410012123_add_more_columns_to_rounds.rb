class AddMoreColumnsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :fighter_id, :integer
  end
end
