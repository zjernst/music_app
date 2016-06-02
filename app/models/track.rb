class Track < ActiveRecord::Base
  validates :title, :album_id, :bonus
  
  belongs_to :albums
  has_one :band, through: :albums
end
