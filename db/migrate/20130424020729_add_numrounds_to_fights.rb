class AddNumroundsToFights < ActiveRecord::Migration
  def change
    add_column :fights, :numrounds, :integer
  end
end
