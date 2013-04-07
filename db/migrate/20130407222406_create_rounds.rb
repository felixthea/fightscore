class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :fighter_a_score
      t.integer :fighter_b_score

      t.timestamps
    end
  end
end
