class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist


  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    artist = Artist.find_by(name: "Drake")
    if artist == nil
      drake = Artist.create(name: "Drake")
      self.artist = drake
    else
      self.artist = artist
    end

    # you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # when this method is called it should assign the song's artist to Drake
    
  end
end