class News < ActiveRecord::Base
  attr_accessible :author, :body, :image_url, :title, :prew
end
