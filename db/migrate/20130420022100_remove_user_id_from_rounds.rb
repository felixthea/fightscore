class RemoveUserIdFromRounds < ActiveRecord::Migration
  def up
    remove_column :rounds, :user_id
  end

  def down
    add_column :rounds, :user_id, :integer
  end
end
