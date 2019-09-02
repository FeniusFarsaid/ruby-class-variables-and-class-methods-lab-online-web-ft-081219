class Song 
  
  attr_accessor :name, :artist, :genre
  
#sets 3 attributes to the class Song.

  @@count = 0 
  
#introduces the class variable @@count and sets it to 0.
  
  @@artists = []
  @@genres = []
  
#Introduces the class variables @@artists and @@genres and sets them to empty arrays
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end 
  
#Initializes intances of Song with 3 delimeters. Sets the instance variables (@name, @artist, and @genre) to the method arguments. Shovels the argument artist into the @@artists array. Adds 1 to the count.
  
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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
#
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1 
      end 
    end 
    artist_count
  end 
  
end 









# class Album
#   @@album_count = 0 
 
#   def initialize
#     @@album_count += 1
#   end
 
#   def self.count
#     @@album_count
#   end
# end