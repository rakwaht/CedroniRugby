class AddYearToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :year, :integer
  end
end
