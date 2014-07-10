class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :name
      t.integer :point
      t.integer :games

      t.timestamps
    end
  end
end
