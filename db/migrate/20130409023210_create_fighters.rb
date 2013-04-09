class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :fight_id

      t.timestamps
    end
  end
end
