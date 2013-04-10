class RemoveColumnsFromFighters < ActiveRecord::Migration
  def up
    remove_column :fighters, :fight_id
    remove_column :fighters, :round_id
  end

  def down
    add_column :fighters, :fight_id, :integer
    add_column :fighters, :fight_id, :integer
  end
end
