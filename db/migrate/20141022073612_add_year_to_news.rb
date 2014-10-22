class AddYearToNews < ActiveRecord::Migration
  def change
    add_column :news, :year, :integer
  end
end
