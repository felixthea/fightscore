class AddColumnToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :round_id, :integer
  end
end
