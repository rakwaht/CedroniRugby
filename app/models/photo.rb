class Photo < ActiveRecord::Base
  attr_accessible :album_id, :image_url, :title
  belongs_to :album
end
