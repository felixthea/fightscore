class RemoveColumnFromFights < ActiveRecord::Migration
  def up
    remove_column :fights, :fighter_a
    remove_column :fights, :fighter_b
  end

  def down
    add_column :fighters, :fighter_a, :string
    add_column :fighters, :fighter_b, :string
  end
end
