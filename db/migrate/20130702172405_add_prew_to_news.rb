class AddPrewToNews < ActiveRecord::Migration
  def change
    add_column :news, :prew, :text
  end
end
