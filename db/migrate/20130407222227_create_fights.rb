class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.date :date
      t.string :fighter_a
      t.string :fighter_b

      t.timestamps
    end
  end
end
