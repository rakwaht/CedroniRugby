class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :author
      t.text :title
      t.text :body
      t.text :image_url

      t.timestamps
    end
  end
end
