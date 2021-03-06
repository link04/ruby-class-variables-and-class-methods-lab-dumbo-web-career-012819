require 'pry'

class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count 
    @@count
  end
  
  def self.artists 
     @@artists.uniq
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    genres_counted = { }
    @@genres.each do |genre|
      if genres_counted[genre]
        genres_counted[genre] += 1;
      else
        genres_counted[genre] = 1
      end  
    end
    genres_counted
  end
  
  def self.artist_count
    artists_counted = { }
    @@artists.each do |artist|
      if artists_counted[artist]
        artists_counted[artist] += 1;
      else
        artists_counted[artist] = 1
      end  
    end
    artists_counted
  end
  
  
end




