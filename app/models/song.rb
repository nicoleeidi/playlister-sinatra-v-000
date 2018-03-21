class Song < ActiveRecord::Base
  has_many :songsgenres
  has_many :genres, :through => :song_genres
  belongs_to :artist
  def slug
    name.downcase.gsub(" ","-")
  end
end