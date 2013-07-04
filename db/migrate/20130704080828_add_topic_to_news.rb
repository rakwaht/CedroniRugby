class AddTopicToNews < ActiveRecord::Migration
  def change
    add_column :news, :topic, :string
  end
end
