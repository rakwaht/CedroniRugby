class Album < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :photos, dependent: :destroy
end
