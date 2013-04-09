class AddColumnToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :roundname, :integer
  end
end
