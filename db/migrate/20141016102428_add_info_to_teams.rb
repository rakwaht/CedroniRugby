class AddInfoToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :win, :integer
    add_column :teams, :lose, :integer
    add_column :teams, :tie, :integer
    add_column :teams, :point_made, :integer
    add_column :teams, :point_given, :integer
    add_column :teams, :try, :integer
  end
end
