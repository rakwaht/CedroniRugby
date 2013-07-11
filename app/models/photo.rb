class Photo < ActiveRecord::Base
  attr_accessible :album_id, :image_url
  belongs_to :album
end
